li = @(v,p,p_1)v/abs(log(p)-log(p_1));
v = xlsread('szzz.xls','B2:B258');
p = xlsread('szzz.xls','G2:G258');
liquid =[];
for t = 2:length(p)
    liquid(t) = li(v(t),p(t),p(t-1));
end
plot(liquid)