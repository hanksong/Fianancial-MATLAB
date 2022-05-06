load shl_mydata.mat
contract = {a,b,c,d,e};
r_v = {};
%%
for i = 1:4
    datenn = contract{i}(:,1);
    datenn = datetime(datenn,'ConvertFrom','excel');
    close = contract{i}(:,5);
    ret = price2ret(close);
    sumvt=0;
    days = 1;
    for j = 1:length(ret)
        if datenn(j+1)-datenn(j) > '12:00:00'  %超过了一天，更改天数，完成求和
            r_v{i}(days) = sumvt;
            days = days + 1;
        else % 日内平方和
            sumvt = sumvt + (ret(j))^2;
        end
    end
end

%%
for i = 1:4
    maxrv(i)= max(r_v{i});
    minrv(i) = min(r_v{i});
    meanrv(i) = mean(r_v{i});
end