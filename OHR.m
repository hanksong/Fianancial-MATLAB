function rate = OHR(spot,future)
%OHR Optimal hedge rate
%   输入现货、期货观测价格，输出最有对冲率
c = cov(spot,future);
rate = ( c(1,2)/(c(1,1)*c(2,2))^0.5 ) * (c(1,1)/c(2,2))^0.5 ;
end

