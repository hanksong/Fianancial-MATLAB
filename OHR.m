function rate = OHR(spot,future)
%OHR Optimal hedge rate
%   �����ֻ����ڻ��۲�۸�������жԳ���
c = cov(spot,future);
rate = ( c(1,2)/(c(1,1)*c(2,2))^0.5 ) * (c(1,1)/c(2,2))^0.5 ;
end

