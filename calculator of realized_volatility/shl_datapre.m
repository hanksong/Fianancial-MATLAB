function stockana = shl_datapre(price,volume)
%SHL_DATAPRE 输入价格和交易量，输出股票分析数据

stockana.logret=[zeros(1,4);diff(log(price))];
logr = stockana.logret;
stockana.statis.dis = [max(logr);min(logr);median(logr)];
stockana.statis.cent = [std(logr);skewness(logr);kurtosis(logr)];
stockana.statis.vot = price.*volume;

end

