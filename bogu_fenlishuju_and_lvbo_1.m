
clear  ;

clc     ;

close all  ;

format long g  ;
 
data=importdata('C:\Users\sunming\Desktop\新版本数据--初步测试\5.1安装包\Data\1(邵秀玲)_1.txt',';');  

plot(data);

data1=round(data(:,1));       %1000-3000   %1600:5000

data2=round(data(:,2)) ;      %1000-3000

data3=round(data(:,3));

data4=round(data(:,4));

data=[data1,data2,data3,data4];

plot(data);

legend('data1','data2','data3','data4')




figure;

plot(data1);

output=round(data1);

for i=1:length(output)-30
    if((output(i)>output(i+30)+20)&&(output(i)>1400)&&(output(i)>output(i+5))&&(output(i+5)>output(i+10))&&(output(i+10)>output(i+15))&&(output(i+15)>output(i+20))&&(output(i+20)>output(i+25)))
        break;
    end
end                                                                                % 最大值
start=i;  %+200  +100

for i=start:length(output)
    if(output(i)<=700)                                                  % 门限
        break;
    end
end

finish   =i;

hold on ；

plot(start,output(start),'ro',finish,output(finish),'ro')  ;

dlmwrite('C:\Users\sunming\Desktop\ABI\1.txt',output(start:finish),'delimiter', '\n','precision','%d')    ;







figure;

plot(data2);


output  =round(data2);

for i=1:length(output)-30   
      if((output(i)>output(i+30)+20)&&(output(i)>1400)&&(output(i)>output(i+5))&&(output(i+5)>output(i+10))&&(output(i+10)>output(i+15))&&(output(i+15)>output(i+20))&&(output(i+20)>output(i+25)))
        break;
    end
end
start=i;  %+200  %+100

for i=start:length(output)
    if(output(i)<=700)
        break;
    end
end

finish=i;

hold on  ;
plot(start,output(start),'ro',finish,output(finish),'ro');

dlmwrite('C:\Users\sunming\Desktop\ABI\2.txt',output(start:finish),'delimiter', '\n','precision','%d');



figure
plot(data3) ;

output=round(data3);

for i=1:length(output)-30
    if((output(i)>output(i+30)+20)&&(output(i)>1400)&&(output(i)>output(i+5))&&(output(i+5)>output(i+10))&&(output(i+10)>output(i+15))&&(output(i+15)>output(i+20))&&(output(i+20)>output(i+25)))
        break;
    end
end
start=i;    %+200  +100

for i=start:length(output)
    if(output(i)<=700)
        break;
    end
end

finish=i;

hold on ;

plot(start,output(start),'ro',finish,output(finish),'ro')  ;

dlmwrite('C:\Users\sunming\Desktop\ABI\3.txt',output(start:finish),'delimiter', '\n','precision','%d')


figure;

plot(data4)  ;


output=round(data4)   ;

for i=1:length(output)-30
   if((output(i)>output(i+30)+20)&&(output(i)>1400)&&(output(i)>output(i+5))&&(output(i+5)>output(i+10))&&(output(i+10)>output(i+15))&&(output(i+15)>output(i+20))&&(output(i+20)>output(i+25)))
        break;
    end
end

start=i;    %+200  +100

for i=start:length(output)
    if(output(i)<=700)
        break;
    end
end

finish=i;

hold on   ;

plot(start,output(start),'ro',finish,output(finish),'ro')   ;

dlmwrite('C:\Users\sunming\Desktop\ABI\4.txt',output(start:finish),'delimiter', '\n','precision','%d')




[dingdian]=bloodPress_1('C:\Users\sunming\Desktop\ABI\1.txt') ;

Ankle_left_dingdian=dingdian;

[dingdian]=bloodPress_1( 'C:\Users\sunming\Desktop\ABI\2.txt') ;

Ankle_right_dingdian=dingdian;

[dingdian]=bloodPress_1( 'C:\Users\sunming\Desktop\ABI\3.txt') ;

Brachial_left_dingdian=dingdian;

[dingdian]=bloodPress_1( 'C:\Users\sunming\Desktop\ABI\4.txt') ;

Brachial_right_dingdian=dingdian;


format bank  ;

parameter=zeros(4,1);

parameter(1,1)   =round(Ankle_left_dingdian/10);                                                                    
parameter(2,1)   =round(Ankle_right_dingdian/10);   
parameter(3,1)   =round(Brachial_left_dingdian/10);                                                                    
parameter(4,1)   =round(Brachial_right_dingdian/10);  

jieguo=sprintf('%d\n',parameter(1:4));

xlswrite('结果参数',parameter);                                            

Ankle_left_jiaya=200;

Ankle_right_jiaya=200;

Brachial_left_jiaya=200;

Brachial_right_jiaya=200;

if(parameter(1,1)>=170)
    
    Ankle_left_jiaya=parameter(1,1)+100;  
    
    if(Ankle_left_jiaya>280)
        
        Ankle_left_jiaya=280;
        
    end
    
elseif(parameter(1,1)>=160)
    
    Ankle_left_jiaya=parameter(1,1)+90;   
    
elseif(parameter(1,1)>=140)
    
    Ankle_left_jiaya=parameter(1,1)+80;     
    
else
    
    Ankle_left_jiaya=200;
    
end

if(parameter(2,1)>=170)
    
    Ankle_right_jiaya=parameter(2,1)+100;  
    
    if(Ankle_right_jiaya>280)
        
        Ankle_right_jiaya=280;
        
    end
    
elseif(parameter(2,1)>=160)
    
    Ankle_right_jiaya=parameter(2,1)+90;   
    
elseif(parameter(2,1)>=140)
    
    Ankle_right_jiaya=parameter(2,1)+80; 
    
else
    
    Ankle_right_jiaya=200;
    
end

 
if(parameter(3,1)>=170)
    
    Brachial_left_jiaya=parameter(3,1)+100;    
    
    if(Brachial_left_jiaya>280)
        
        Brachial_left_jiaya=280;
        
    end
    
elseif(parameter(3,1)>=160)
    
    Brachial_left_jiaya=parameter(3,1)+90;   
    
elseif(parameter(3,1)>=140)
    
    Brachial_left_jiaya=parameter(3,1)+80;  
    
else
    
    Brachial_left_jiaya=200;
    
end


if(parameter(4,1)>=170)
    
    Brachial_right_jiaya=parameter(4,1)+110;   
    
    if(Brachial_right_jiaya>280)
        
        Brachial_right_jiaya=280;
        
    end
    
elseif(parameter(4,1)>=160)
    
    Brachial_right_jiaya=parameter(4,1)+100;  
    
elseif(parameter(4,1)>=150)
    
    Brachial_right_jiaya=parameter(4,1)+90;
    
elseif(parameter(4,1)>=140)
    
    Brachial_right_jiaya=parameter(4,1)+80;
    
else
    
    Brachial_right_jiaya=200;
    
end
% 
% if(parameter(1,1)>=140)
%     Ankle_left_jiaya=parameter(1,1)+80;    
% end
%
% if(parameter(2,1)>=140)
%     Ankle_right_jiaya=parameter(2,1)+80;    
% end
% 
% if(parameter(3,1)>=140)
%     Brachial_left_jiaya=parameter(3,1)+80;    
% end
% 
% if(parameter(4,1)>=140)
%     Brachial_right_jiaya=parameter(4,1)+80;    
% end 
%     
Ankle_left_jiaya;

Ankle_right_jiaya;

Brachial_left_jiaya;

Brachial_right_jiaya;

