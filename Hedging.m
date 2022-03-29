spot = xlsread('300spot.csv','B2:B244');
future = xlsread('沪深300期货历史数据.csv','C2:C244');
future = flip(future);
%s和f都用了开盘价
ohr = OHR(spot,future)