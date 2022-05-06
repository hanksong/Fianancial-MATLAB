% type bldc.txt
% fid = fopen('bldc.txt','r');
% A = fscanf(fid,'%d/ %d/ %d %f %f %f %f %f %f',[9 Inf]);
% fclose(fid);
% A = A'
% 
% fid = fopen('D:\课程材料\金融数值计算\2020310368-宋汉梁-第3次作业\数据文件\bldc.txt','r');
% B = textscan(fid,'%s %f %f %f %f %f %f');
% fclose(fid);
% B = B';
% 
% fid = fopen('fskp.txt','r');
% a = textscan(fid,'%f %f %f %f %f ');
% fclose(fid);
% a = a';
% 
% fid = fopen('fskp.txt','r');
% b = fscanf(fid,'%f %f %f %f %f ',[5 Inf]);
% fclose(fid);
% b = b';


%读银行
% name = {'招商银行.xls','张家港行.xls','平安银行.xls','工商银行.xls'};
% for i =1:4
%     bank_data(i) = importdata(name{i});
% end


