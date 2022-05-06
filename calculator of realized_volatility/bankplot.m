clear;clc;
load('bank_data.mat');     
name = {'CMB','ZJGH','PAYH','ICBC'};
price = [];volume = [];
%读取收盘价close存到price里，读取成交量存到volume里
for i = 1:4
    price(:,i) = bank_data(i).data(:,4);
    volume(:,i) = bank_data(i).data(:,6);
end

ana = shl_datapre(price,volume);
%%
%画图。
date = bank_data(1).textdata(2:end,3);
datenn = datenum(date);

for i = 1:4
    subplot(2,2,i);
    [AX,H1,H2] = plotyy(datenn,price(:,i),datenn,ana.logret(:,i));
    datetick(AX(1),'x','yy/mm/dd');
    datetick(AX(2),'x','mm/dd');
    set(H1,'linewidth',1,'linestyle','-','color','k');
    set(H2,'linewidth',1,'linestyle','--','color','r');
    set(AX(:),'XColor','k','YColor','k');
    legend('Close','Logreturn');
    title(name{i})
end