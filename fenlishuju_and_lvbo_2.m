clear;

clc;

close all ;

format long g

high=154;

data=importdata('C:\Users\sunming\Desktop\新版本数据--初步测试\5.1安装包\Data\45(dy)_2.txt',';');  

data1=round(data(:,1));       %1000-3000   %1600:5000

data2=round(data(:,2));      %1000-3000

data3=round(data(:,3));

data4=round(data(:,4));

data=[data1,data2,data3,data4];

plot(data);

legend('data1','data2','data3','data4');




figure;

plot(data1);

output=round(data1);

for i=1:length(output)-30
    if((output(i)>output(i+30)+20)&&(output(i)>1400)&&(output(i)>output(i+5))&&(output(i+5)>output(i+10))&&(output(i+10)>output(i+15))&&(output(i+15)>output(i+20))&&(output(i+20)>output(i+25)))
       
        break;                                                                            %找顶点
        
    end
    
end


start = i;  %+200  +100                    % search the  top  sample 


for i=start:length(output)   
    
    if(output(i)<=560)
        
        break;
        
    end                                                %找ABI有效数据
    
end


finish=i;                                         % search   the  valid   data                          

 hold on;

 plot(start,output(start),'ro',finish,output(finish),'ro');
 

dlmwrite('C:\Users\sunming\Desktop\ABI\1.txt',output(start:finish),'delimiter', '\n','precision','%d');


d0=0;
d1=0;
d2=0;
d3=0;
d4=0;
d5=0;
d6=0;
d7=0;
d8=0;
d9=0;
d10=0;
d11=0;
d12=0;
y0=0;
y1=0;
y2=0;

for i=1:length(data1)
     y0=2*y1-y2+data1(i)-2*d4+d9;
     y1=y0;
     y2=y1;
     
    d12=d11 ;
	d11=d10 ;
	d10=d9 ; 
	d9=d8 ;
	d8=d7 ;
	d7=d6 ;
	d6=d5 ;
	d5=d4 ;
	d4=d3 ;
	d3=d2 ;
	d2=d1 ;
	d1=d0 ;
	d0=data1(i) ;						
	data1(i)=y0/25;      %32是最原始的值       //修改
end



data1=data1(5:length(data1));                  %//修改
% output=round(data1);
% plot(output)


output=round(data1);

start=finish+200;                                         %脉搏波有效数据

finish=length(data1);

left_Ankle_start=start;

plot(data1);

hold on;

plot(start,output(start),'ro',finish,output(finish),'ro');





figure;
plot(data2);


output=round(data2);

for i=1:length(output)-30
      if((output(i)>output(i+30)+20)&&(output(i)>1400)&&(output(i)>output(i+5))&&(output(i+5)>output(i+10))&&(output(i+10)>output(i+15))&&(output(i+15)>output(i+20))&&(output(i+20)>output(i+25)))
        break;
      end                                                              %找顶点
end

start=i;  %+200  %+100

for i=start:length(output)
    
    if(output(i)<=560)
        break;
    end                                                              %找ABI有效数据
end

finish=i;

hold on; 

plot(start,output(start),'ro',finish,output(finish),'ro');

dlmwrite('C:\Users\sunming\Desktop\ABI\2.txt',output(start:finish),'delimiter', '\n','precision','%d')


d0=0;
d1=0;
d2=0;
d3=0;
d4=0;
d5=0;
d6=0;
d7=0;
d8=0;
d9=0;
d10=0;
d11=0;
d12=0;
y0=0;
y1=0;
y2=0;

for i=1:length(data2)
    
     y0=2*y1-y2+data2(i)-2*d4+d9;
     
     y2=y1;
     y1=y0;
     
    d12=d11 ;
	d11=d10 ;
	d10=d9 ;
	d9=d8 ;
	d8=d7 ;
	d7=d6 ;
	d6=d5 ;
	d5=d4 ;
	d4=d3 ;
	d3=d2 ;
	d2=d1 ;
	d1=d0 ;
	d0=data2(i) ;						
	data2(i)=y0/25;         %32是最原始的值
end

data2=data2(5:length(data2));

% output=round(data2)+150;
% plot(output)

output=round(data2);

start=finish+200;             

finish=length(data1);

right_Ankle_start=start;                                                            %脉搏波有效数据

plot(data2);

hold on ;

plot(start,output(start),'ro',finish,output(finish),'ro');


figure ;

plot(data3);

output=round(data3);

for i=1:length(output)-30
    if((output(i)>output(i+30)+20)&&(output(i)>1400)&&(output(i)>output(i+5))&&(output(i+5)>output(i+10))&&(output(i+10)>output(i+15))&&(output(i+15)>output(i+20))&&(output(i+20)>output(i+25)))
        break;
    end
end                                                                                   %找顶点

start=i;    %+200  +100

for i=start:length(output)
    if(output(i)<=560)
        break;
    end
end

finish=i;                                                                     % ABI有效数据               

hold on ;

plot(start,output(start),'ro',finish,output(finish),'ro')

dlmwrite('C:\Users\sunming\Desktop\ABI\3.txt',output(start:finish),'delimiter', '\n','precision','%d')



d0=0;
d1=0;
d2=0;
d3=0;
d4=0;
d5=0;
d6=0;
d7=0;
d8=0;
d9=0;
d10=0;
d11=0;
d12=0;
y0=0;
y1=0;
y2=0;

for i=1:length(data3)
     y0=2*y1-y2+data3(i)-2*d4+d9;
     y2=y1;
     y1=y0;
     
    d12=d11 ;
	d11=d10 ;
	d10=d9 ;
	d9=d8 ;
	d8=d7 ;
	d7=d6 ;
	d6=d5 ;
	d5=d4 ;
	d4=d3 ;
	d3=d2 ;
	d2=d1 ;
	d1=d0 ;
	d0=data3(i) ;						
	data3(i)=y0/25;            %32是最原始的值
end

data3=data3(5:length(data3));

% output=round(data3)+150;
% plot(output)

output=round(data3);

start=finish+200;

finish=length(data3);

left_Brachial_start=start;                                     %脉搏波有效 数据

plot(data3);

hold on ;

plot(start,output(start),'ro',finish,output(finish),'ro');


figure
plot(data4);

output=round(data4) ;

for i=1:length(output)-30
   if((output(i)>output(i+30)+20)&&(output(i)>1400)&&(output(i)>output(i+5))&&(output(i+5)>output(i+10))&&(output(i+10)>output(i+15))&&(output(i+15)>output(i+20))&&(output(i+20)>output(i+25)))
        break;
    end
end                                                                                          %找顶点

start=i;    %+200  +100

for i=start:length(output)
    if(output(i)<=560)
        break;
    end
end

finish=i;                                                                                 % ABI有效数据

hold on ;

plot(start,output(start),'ro',finish,output(finish),'ro') ;

dlmwrite('C:\Users\sunming\Desktop\ABI\4.txt',output(start:finish),'delimiter', '\n','precision','%d')

d0=0 ;
d1=0 ;
d2=0 ;
d3=0 ;
d4=0 ;
d5=0 ;
d6=0 ;
d7=0 ;
d8=0 ; 
d9=0 ;
d10=0 ;
d11=0 ;
d12=0 ;
y0=0   ;
y1=0   ;
y2=0  ;

for i=1:length(data4)
     y0=2*y1-y2+data4(i)-2*d4+d9;
     y2=y1;
     y1=y0;
     
    d12=d11 ;
	d11=d10 ;
	d10=d9 ;
	d9=d8 ;
	d8=d7 ;
	d7=d6 ;
	d6=d5 ;
	d5=d4 ;
	d4=d3 ;
	d3=d2 ;
	d2=d1 ;
	d1=d0 ;
	d0=data4(i) ;						
	data4(i)=y0/25;             %32是最原始的值
end

data4=data4(5:length(data4));

% output=round(data4)+150;
% plot(output)


output=round(data4);

start=finish+200;

finish=length(data4);

right_Brachial_start=start;                                       %脉搏波有效数据

plot(data4);

hold on;

plot(start,output(start),'ro',finish,output(finish),'ro')  ;

Max_maibobo_start=max([left_Ankle_start,right_Ankle_start,left_Brachial_start,right_Brachial_start]);             %最大公约

dlmwrite('C:\Users\sunming\Desktop\PWV\1.txt',(data1(Max_maibobo_start:finish)),'delimiter', '\n','precision','%.2f')
dlmwrite('C:\Users\sunming\Desktop\PWV\2.txt',(data2(Max_maibobo_start:finish)),'delimiter', '\n','precision','%.2f')
dlmwrite('C:\Users\sunming\Desktop\PWV\3.txt',(data3(Max_maibobo_start:finish)),'delimiter', '\n','precision','%.2f')
dlmwrite('C:\Users\sunming\Desktop\PWV\4.txt',(data4(Max_maibobo_start:finish)),'delimiter', '\n','precision','%.2f')




[Forecast_Systolic_pressure,Forecast_Diastolic_pressure,dingdian]=bloodPress_2('C:\Users\sunming\Desktop\ABI\1.txt') ;

Ankle_left_bloodPress=Forecast_Systolic_pressure;
Ankle_left_Diastolic=Forecast_Diastolic_pressure;
Ankle_left_dingdian=dingdian;

[Forecast_Systolic_pressure,Forecast_Diastolic_pressure,dingdian]=bloodPress_2( 'C:\Users\sunming\Desktop\ABI\2.txt');
Ankle_right_bloodPress=Forecast_Systolic_pressure;
Ankle_right_Diastolic=Forecast_Diastolic_pressure;
Ankle_right_dingdian=dingdian;

[Forecast_Systolic_pressure,Forecast_Diastolic_pressure,dingdian]=bloodPress_2( 'C:\Users\sunming\Desktop\ABI\3.txt');
Brachial_left_bloodPress=Forecast_Systolic_pressure;
Brachial_left_Diastolic=Forecast_Diastolic_pressure;
Brachial_left_dingdian=dingdian;

[Forecast_Systolic_pressure,Forecast_Diastolic_pressure,dingdian]=bloodPress_2( 'C:\Users\sunming\Desktop\ABI\4.txt');
Brachial_right_bloodPress=Forecast_Systolic_pressure;
Brachial_right_Diastolic=Forecast_Diastolic_pressure;
Brachial_right_dingdian=dingdian;


% Brachial_left_bloodPress=130
% Brachial_right_bloodPress=135
% Ankle_left_bloodPress=150
% Ankle_right_bloodPress=155

Ankle_left_bloodPress;
Ankle_right_bloodPress;
Brachial_left_bloodPress;
Brachial_right_bloodPress;





% height=176
% 
% La=0.2195*height-2.07340
% Lb=0.5643*height-18.381+0.2486*height+30.709

% baPWV=(Lb-La)/PTTba











data=importdata('C:\Users\sunming\Desktop\PWV\1.txt');
figure;
plot(data);                                                                                    %原始脉搏波数据
beifen_data=data;

left_Ankle_data2=diff(data);                                                       % 一阶差分                                     
left_Ankle_data3=diff(left_Ankle_data2);                                   % 二阶差分

left_Ankle_data2=(round(left_Ankle_data2.*100))./100;           %  定点化    
left_Ankle_data3=(round(left_Ankle_data3.*100))./100;           %  定点化

left_Ankle_data3(abs(left_Ankle_data3)<0.00001)=0;               % 最小分辨率  

data=left_Ankle_data3;                   



count=0;

left_Ankle_Point=[];

i=100;
while(i<=length(data)-100)
    if  ((data(i+30)>=data(i))&&(data(i+30)>=data(i+1))&&(data(i+30)>=data(i+2))&&(data(i+30)>=data(i+3))&&(data(i+30)>=data(i+4))&&...
        (data(i+30)>=data(i+5))&&(data(i+30)>=data(i+6))&&(data(i+30)>=data(i+7))&&(data(i+30)>=data(i+8))&&(data(i+30)>=data(i+9))&&...
        (data(i+30)>=data(i+10))&&(data(i+30)>=data(i+11))&&(data(i+30)>=data(i+12))&&(data(i+30)>=data(i+13))&&(data(i+30)>=data(i+14))&&...
        (data(i+30)>=data(i+15))&&(data(i+30)>=data(i+16))&&(data(i+30)>=data(i+17))&&(data(i+30)>=data(i+18))&&(data(i+30)>=data(i+19))&&...
        (data(i+30)>=data(i+20))&&(data(i+30)>=data(i+21))&&(data(i+30)>=data(i+22))&&(data(i+30)>=data(i+23))&&(data(i+30)>=data(i+24))&&...
        (data(i+30)>=data(i+25))&&(data(i+30)>=data(i+26))&&(data(i+30)>=data(i+27))&&(data(i+30)>=data(i+28))&&(data(i+30)>=data(i+29))&&...
        (data(i+30)>=data(i+31))&&(data(i+30)>=data(i+32))&&(data(i+30)>=data(i+33))&&(data(i+30)>=data(i+34))&&(data(i+30)>=data(i+35))&&...
        (data(i+30)>=data(i+36))&&(data(i+30)>=data(i+37))&&(data(i+30)>=data(i+38))&&(data(i+30)>=data(i+39))&&(data(i+30)>=data(i+40))&&...
        (data(i+30)>=data(i+41))&&(data(i+30)>=data(i+42))&&(data(i+30)>=data(i+43))&&(data(i+30)>=data(i+44))&&(data(i+30)>=data(i+45))&&...
        (data(i+30)>=data(i+46))&&(data(i+30)>=data(i+47))&&(data(i+30)>=data(i+48))&&(data(i+30)>=data(i+49))&&(data(i+30)>=data(i+50))&&...
        (data(i+30)>=data(i+51))&&(data(i+30)>=data(i+52))&&(data(i+30)>=data(i+53))&&(data(i+30)>=data(i+54))&&(data(i+30)>=data(i+55))&&...
        (data(i+30)>=data(i+56))&&(data(i+30)>=data(i+57))&&(data(i+30)>=data(i+58))&&(data(i+30)>=data(i+59))&&(data(i+30)>=data(i+60))&&(beifen_data(i+30)<beifen_data(i+55))&&(left_Ankle_data2(i+37)>=0)&&(left_Ankle_data2(i+30)>=0)&&(left_Ankle_data2(i+35)>=0))  %&&(max(beifen_data(i+30:i+45))-beifen_data(i+30)>6)
                                                                                                                         %%   寻找二阶微分极大值点，60可能为半个脉搏周期 
        if(count==0)
            left_Ankle_Point=[left_Ankle_Point,i+30];                                           %%  初始化该二阶微分极值点  
            count=count+1;
        end
%         if((count==1)&&(i+30>left_Ankle_Point(length(left_Ankle_Point))+60))
%                                                                                                                                 %% 在另半个脉搏周期内又找到新的合适点                
        if((count==1)&&(i+30>left_Ankle_Point(length(left_Ankle_Point))+60)&&(i+30<left_Ankle_Point(length(left_Ankle_Point))+130))
            left_Ankle_Point=[left_Ankle_Point,i+30];                                                 %% 加入新二阶微分极值点    
%             count=count+1;
        end
%         if((count==1)&&(i+30>left_Ankle_Point(length(left_Ankle_Point))+130))
%            left_Ankle_Point=[left_Ankle_Point,round((i+30+left_Ankle_Point(length(left_Ankle_Point)))/2)];
%            left_Ankle_Point=[left_Ankle_Point,i+30];
%         end

%         if((count==1)&&(i+30>left_Ankle_Point(length(left_Ankle_Point))+130)&&(i+30<=left_Ankle_Point(length(left_Ankle_Point))+210))
%            left_Ankle_Point=[left_Ankle_Point,round((i+30+left_Ankle_Point(length(left_Ankle_Point)))/2)];
%            left_Ankle_Point=[left_Ankle_Point,i+30];
%         end
        if((count==1)&&(i+30>left_Ankle_Point(length(left_Ankle_Point))+130))         %% 在另一个脉搏周期内又找到新的合适点 
            
            for temp_0301=left_Ankle_Point(length(left_Ankle_Point))+50:left_Ankle_Point(length(left_Ankle_Point))+130     %%漏掉的半个周期
              
                 temp_sum=0;
                 
                for kkk=-30:30 
                    
                if(data(temp_0301)>=data(temp_0301+kkk))                  %%寻找半个周期极大值点
                     temp_sum=temp_sum+1;
                end
                end
                
                if((temp_sum>=60)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(left_Ankle_data2(temp_0301+7)>=0)&&(left_Ankle_data2(temp_0301)>=0)&&(left_Ankle_data2(temp_0301+5)>=0))          
                    left_Ankle_Point=[left_Ankle_Point,temp_0301];           %%加入新二阶微分极值点   
                    i=temp_0301;
                    break;
                end
                
                
            end                                                        
            
                    
           if(temp_0301==left_Ankle_Point(length(left_Ankle_Point))+130)          %%条件太严格60，半个周期极大值点没有找到         
              for temp_0301=left_Ankle_Point(length(left_Ankle_Point))+50:left_Ankle_Point(length(left_Ankle_Point))+130
                 
                  temp_sum=0;
                  for kkk=-30:30 
                  if(data(temp_0301)>=data(temp_0301+kkk))                                 %%降低条件59，重新寻找
                     temp_sum=temp_sum+1;
                  end
                  end
                  if((temp_sum>=59)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(left_Ankle_data2(temp_0301+7)>=0)&&(left_Ankle_data2(temp_0301)>=0)&&(left_Ankle_data2(temp_0301+5)>=0))          
                     left_Ankle_Point=[left_Ankle_Point,temp_0301];
                     i=temp_0301;
                     break;
                  end
              end   
           end
          
           if(temp_0301==left_Ankle_Point(length(left_Ankle_Point))+130)                %%条件太严格59，半个周期极大值点没有找到 
               
              for temp_0301=left_Ankle_Point(length(left_Ankle_Point))+50:left_Ankle_Point(length(left_Ankle_Point))+130
                  
                  temp_sum=0;
                  
                  for kkk=-30:30 
                  if(data(temp_0301)>=data(temp_0301+kkk))                                        %%降低条件58，重新寻找
                     temp_sum=temp_sum+1;
                  end
                  end
                  if((temp_sum>=58)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(left_Ankle_data2(temp_0301+7)>=0)&&(left_Ankle_data2(temp_0301)>=0)&&(left_Ankle_data2(temp_0301+5)>=0))          
                     left_Ankle_Point=[left_Ankle_Point,temp_0301];
                     i=temp_0301;
                     break;
                  end
              end   
           end
          
            
            
        end    
    end
    
    
    if(count==2)
        break;
    end 
    i=i+1;
end

hold on;

% left_Ankle_Point=left_Ankle_Point+1;

plot(left_Ankle_Point,beifen_data(left_Ankle_Point),'ro');                               %%绘制二阶微分极大值点对应的原始数据
% axis([0,length(data),500,700])
% plot(left_Ankle_Point(1),data(left_Ankle_Point(1)),'ro',left_Ankle_Point(2),data(left_Ankle_Point(2)),'ro')



data=importdata('C:\Users\sunming\Desktop\PWV\2.txt');
figure;

plot(data)

beifen_data=data;                                                                                             %原始脉搏波数据

right_Ankle_data2=diff(data);                                                                           % 一阶差分                                                               
   
right_Ankle_data3=diff(right_Ankle_data2);                                                     % 二阶差分                                              

right_Ankle_data2=(round(right_Ankle_data2.*100))./100;                             %  定点化

right_Ankle_data3=(round(right_Ankle_data3.*100))./100;                             %  定点化                 

right_Ankle_data3(abs(right_Ankle_data3)<0.00001)=0;                                % 最小分辨率 

data=right_Ankle_data3;

count=0;

right_Ankle_Point=[];

i=100;

while(i<=length(data)-100)
    if  ((data(i+30)>=data(i))&&(data(i+30)>=data(i+1))&&(data(i+30)>=data(i+2))&&(data(i+30)>=data(i+3))&&(data(i+30)>=data(i+4))&&...
        (data(i+30)>=data(i+5))&&(data(i+30)>=data(i+6))&&(data(i+30)>=data(i+7))&&(data(i+30)>=data(i+8))&&(data(i+30)>=data(i+9))&&...
        (data(i+30)>=data(i+10))&&(data(i+30)>=data(i+11))&&(data(i+30)>=data(i+12))&&(data(i+30)>=data(i+13))&&(data(i+30)>=data(i+14))&&...
        (data(i+30)>=data(i+15))&&(data(i+30)>=data(i+16))&&(data(i+30)>=data(i+17))&&(data(i+30)>=data(i+18))&&(data(i+30)>=data(i+19))&&...
        (data(i+30)>=data(i+20))&&(data(i+30)>=data(i+21))&&(data(i+30)>=data(i+22))&&(data(i+30)>=data(i+23))&&(data(i+30)>=data(i+24))&&...
        (data(i+30)>=data(i+25))&&(data(i+30)>=data(i+26))&&(data(i+30)>=data(i+27))&&(data(i+30)>=data(i+28))&&(data(i+30)>=data(i+29))&&...
        (data(i+30)>=data(i+31))&&(data(i+30)>=data(i+32))&&(data(i+30)>=data(i+33))&&(data(i+30)>=data(i+34))&&(data(i+30)>=data(i+35))&&...
        (data(i+30)>=data(i+36))&&(data(i+30)>=data(i+37))&&(data(i+30)>=data(i+38))&&(data(i+30)>=data(i+39))&&(data(i+30)>=data(i+40))&&...
        (data(i+30)>=data(i+41))&&(data(i+30)>=data(i+42))&&(data(i+30)>=data(i+43))&&(data(i+30)>=data(i+44))&&(data(i+30)>=data(i+45))&&...
        (data(i+30)>=data(i+46))&&(data(i+30)>=data(i+47))&&(data(i+30)>=data(i+48))&&(data(i+30)>=data(i+49))&&(data(i+30)>=data(i+50))&&...
        (data(i+30)>=data(i+51))&&(data(i+30)>=data(i+52))&&(data(i+30)>=data(i+53))&&(data(i+30)>=data(i+54))&&(data(i+30)>=data(i+55))&&...
        (data(i+30)>=data(i+56))&&(data(i+30)>=data(i+57))&&(data(i+30)>=data(i+58))&&(data(i+30)>=data(i+59))&&(data(i+30)>=data(i+60))&&(beifen_data(i+30)<beifen_data(i+55))&&(right_Ankle_data2(i+37)>=0)&&(right_Ankle_data2(i+30)>=0)&&(right_Ankle_data2(i+35)>=0))  %&&(max(beifen_data(i+30:i+45))-beifen_data(i+30)>6)
    %(right_Ankle_data2(i+30)>=0)&&(right_Ankle_data2(i+31)>=0)&&(right_Ankle_data2(i+32)>=0)&&(right_Ankle_data2(i+33)>=0))
                                                                                                                                            %%   寻找二阶微分极大值点，60可能为半个脉搏周期 
        if(count==0)
            right_Ankle_Point=[right_Ankle_Point,i+30];                                                         %%  初始化该二阶微分极值点                        
            count=count+1;
        end
%         if((count==1)&&(i+30>right_Ankle_Point(length(right_Ankle_Point))+60))
%                                                                                                                                           %% 在另半个脉搏周期内又找到新的合适点  
        if((count==1)&&(i+30>right_Ankle_Point(length(right_Ankle_Point))+60)&&(i+30<right_Ankle_Point(length(right_Ankle_Point))+130))
            right_Ankle_Point=[right_Ankle_Point,i+30];                                                           %% 加入新二阶微分极值点
%             count=count+1;
        end
        
                 
%         if((count==1)&&(i+30>right_Ankle_Point(length(right_Ankle_Point))+130)&&(i+30<=right_Ankle_Point(length(right_Ankle_Point))+210))
%            right_Ankle_Point=[right_Ankle_Point,round((i+30+right_Ankle_Point(length(right_Ankle_Point)))/2)];
%            right_Ankle_Point=[right_Ankle_Point,i+30];
%         end
        if((count==1)&&(i+30>right_Ankle_Point(length(right_Ankle_Point))+130))        %% 在另一个脉搏周期内又找到新的合适点 
             
            for temp_0301=right_Ankle_Point(length(right_Ankle_Point))+50:right_Ankle_Point(length(right_Ankle_Point))+130    %%漏掉的半个周期
               
                temp_sum=0;
                for kkk=-30:30 
                if(data(temp_0301)>=data(temp_0301+kkk))                                                     %%寻找半个周期极大值点                             
                     temp_sum=temp_sum+1;
                end
                end
                if((temp_sum>=60)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(right_Ankle_data2(temp_0301+7)>=0)&&(right_Ankle_data2(temp_0301)>=0)&&(right_Ankle_data2(temp_0301+5)>=0))          
                    right_Ankle_Point=[right_Ankle_Point,temp_0301];                                       %%加入新二阶微分极值点  
                    i=temp_0301;
                    break;
                end
            end
            
            
            if(temp_0301==right_Ankle_Point(length(right_Ankle_Point))+130)                   %%条件太严格60，半个周期极大值点没有找到         
              
               for temp_0301=right_Ankle_Point(length(right_Ankle_Point))+50:right_Ankle_Point(length(right_Ankle_Point))+130
                  temp_sum=0;
                  for kkk=-30:30 
                  if(data(temp_0301)>=data(temp_0301+kkk))                                                  %%降低条件59，重新寻找
                       temp_sum=temp_sum+1;
                  end
                  end
                  if((temp_sum>=59)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(right_Ankle_data2(temp_0301+7)>=0)&&(right_Ankle_data2(temp_0301)>=0)&&(right_Ankle_data2(temp_0301+5)>=0))          
                       right_Ankle_Point=[right_Ankle_Point,temp_0301];
                       i=temp_0301;
                       break;
                  end
               end
              
            end
            
            if(temp_0301==right_Ankle_Point(length(right_Ankle_Point))+130)               %%条件太严格59，半个周期极大值点没有找到 
               for temp_0301=right_Ankle_Point(length(right_Ankle_Point))+50:right_Ankle_Point(length(right_Ankle_Point))+130
                  temp_sum=0;
                  for kkk=-30:30 
                  if(data(temp_0301)>=data(temp_0301+kkk))                                              %%降低条件58，重新寻找             
                       temp_sum=temp_sum+1;
                  end
                  end
                  if((temp_sum>=58)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(right_Ankle_data2(temp_0301+7)>=0)&&(right_Ankle_data2(temp_0301)>=0)&&(right_Ankle_data2(temp_0301+5)>=0))          
                       right_Ankle_Point=[right_Ankle_Point,temp_0301];
                       i=temp_0301;          
                       break;
                  end
               end
              
            end
                  
        end    
        
        
        

%         if((count==1)&&(i+30>right_Ankle_Point(length(right_Ankle_Point))+130))
%            right_Ankle_Point=[right_Ankle_Point,round((i+30+right_Ankle_Point(length(right_Ankle_Point)))/2)];
%            right_Ankle_Point=[right_Ankle_Point,i+30];
%         end
%         if(length(right_Ankle_Point)>=3)
%         if((count==1)&&(i+30>right_Ankle_Point(length(right_Ankle_Point))+130)&&(i+30<2*right_Ankle_Point(length(right_Ankle_Point))+130-right_Ankle_Point(length(right_Ankle_Point)-1)))
%            right_Ankle_Point=[right_Ankle_Point,round((i+30+right_Ankle_Point(length(right_Ankle_Point)))/2)];
%            right_Ankle_Point=[right_Ankle_Point,i+30];
%         end
%         if((count==1)&&(i+30>2*right_Ankle_Point(length(right_Ankle_Point))+130-right_Ankle_Point(length(right_Ankle_Point)-1)))
%            temp_0229=(i+30-right_Ankle_Point(length(right_Ankle_Point)))/(right_Ankle_Point(length(right_Ankle_Point))-right_Ankle_Point(length(right_Ankle_Point)-1))
%            temp_0229=round(temp_0229);
%            for teshu=1:temp_0229-1
%                right_Ankle_Point=[right_Ankle_Point, 2*right_Ankle_Point(length(right_Ankle_Point))-right_Ankle_Point(length(right_Ankle_Point)-1)];
%            end
%            right_Ankle_Point=[right_Ankle_Point,i+30];
%         end    
%         end
    end
    if(count==2)
        break;
    end 
    i=i+1;
end

hold on;


% right_Ankle_Point=right_Ankle_Point+1;

plot(right_Ankle_Point,beifen_data(right_Ankle_Point),'ro')                                                           %%绘制二阶微分极大值点对应的原始数据
% axis([0,length(data),500,700])
% plot(right_Ankle_Point(1),data(right_Ankle_Point(1)),'ro',right_Ankle_Point(2),data(right_Ankle_Point(2)),'ro')

data=importdata('C:\Users\sunming\Desktop\PWV\3.txt');
figure;
plot(data);


beifen_data=data;                                                                                                   % 原始脉搏波数据                                                                                           

left_Brachial_data2=diff(data);                                                                                 % 一阶差分                                                                         

left_Brachial_data3=diff(left_Brachial_data2);                                                          % 二阶差分                        

left_Brachial_data2=(round(left_Brachial_data2.*100))./100;                                   %  定点化         

left_Brachial_data3=(round(left_Brachial_data3.*100))./100;                                  %  定点化

left_Brachial_data3(abs(left_Brachial_data3)<0.00001)=0;                                     % 最小分辨率

data=left_Brachial_data3;

count=0;

left_Brachial_Point=[];

i=100;

while(i<=length(data)-100)
    if  ((data(i+30)>=data(i))&&(data(i+30)>=data(i+1))&&(data(i+30)>=data(i+2))&&(data(i+30)>=data(i+3))&&(data(i+30)>=data(i+4))&&...
        (data(i+30)>=data(i+5))&&(data(i+30)>=data(i+6))&&(data(i+30)>=data(i+7))&&(data(i+30)>=data(i+8))&&(data(i+30)>=data(i+9))&&...
        (data(i+30)>=data(i+10))&&(data(i+30)>=data(i+11))&&(data(i+30)>=data(i+12))&&(data(i+30)>=data(i+13))&&(data(i+30)>=data(i+14))&&...
        (data(i+30)>=data(i+15))&&(data(i+30)>=data(i+16))&&(data(i+30)>=data(i+17))&&(data(i+30)>=data(i+18))&&(data(i+30)>=data(i+19))&&...
        (data(i+30)>=data(i+20))&&(data(i+30)>=data(i+21))&&(data(i+30)>=data(i+22))&&(data(i+30)>=data(i+23))&&(data(i+30)>=data(i+24))&&...
        (data(i+30)>=data(i+25))&&(data(i+30)>=data(i+26))&&(data(i+30)>=data(i+27))&&(data(i+30)>=data(i+28))&&(data(i+30)>=data(i+29))&&...
        (data(i+30)>=data(i+31))&&(data(i+30)>=data(i+32))&&(data(i+30)>=data(i+33))&&(data(i+30)>=data(i+34))&&(data(i+30)>=data(i+35))&&...
        (data(i+30)>=data(i+36))&&(data(i+30)>=data(i+37))&&(data(i+30)>=data(i+38))&&(data(i+30)>=data(i+39))&&(data(i+30)>=data(i+40))&&...
        (data(i+30)>=data(i+41))&&(data(i+30)>=data(i+42))&&(data(i+30)>=data(i+43))&&(data(i+30)>=data(i+44))&&(data(i+30)>=data(i+45))&&...
        (data(i+30)>=data(i+46))&&(data(i+30)>=data(i+47))&&(data(i+30)>=data(i+48))&&(data(i+30)>=data(i+49))&&(data(i+30)>=data(i+50))&&...
        (data(i+30)>=data(i+51))&&(data(i+30)>=data(i+52))&&(data(i+30)>=data(i+53))&&(data(i+30)>=data(i+54))&&(data(i+30)>=data(i+55))&&...
        (data(i+30)>=data(i+56))&&(data(i+30)>=data(i+57))&&(data(i+30)>=data(i+58))&&(data(i+30)>=data(i+59))&&(data(i+30)>=data(i+60))&&(beifen_data(i+30)<beifen_data(i+55))&&(left_Brachial_data2(i+37)>=0)&&(left_Brachial_data2(i+30)>=0)&&(left_Brachial_data2(i+35)>=0))  %&&(max(beifen_data(i+30:i+45))-beifen_data(i+30)>6)
       %(left_Brachial_data2(i+30)>=0)&&(left_Brachial_data2(i+31)>=0)&&(left_Brachial_data2(i+32)>=0)&&(left_Brachial_data2(i+33)>=0))
                                                                                                                          %%   寻找二阶微分极大值点，60可能为半个脉搏周期 
        if(count==0)
            left_Brachial_Point=[left_Brachial_Point,i+30];                                      %%  初始化该二阶微分极值点 
            count=count+1;
        end
%         if((count==1)&&(i+30>left_Brachial_Point(length(left_Brachial_Point))+60))
%                                                                                                                         %% 在另半个脉搏周期内又找到新的合适点 
        if((count==1)&&(i+30>left_Brachial_Point(length(left_Brachial_Point))+60)&&(i+30<left_Brachial_Point(length(left_Brachial_Point))+130))
            left_Brachial_Point=[left_Brachial_Point,i+30];                                       %% 加入新二阶微分极值点
%             count=count+1;
        end
        
        
%         if((count==1)&&(i+30>left_Brachial_Point(length(left_Brachial_Point))+130)&&(i+30<=left_Brachial_Point(length(left_Brachial_Point))+210))
%         left_Brachial_Point=[left_Brachial_Point,round((i+30+left_Brachial_Point(length(left_Brachial_Point)))/2)];
%         left_Brachial_Point=[left_Brachial_Point,i+30];
%         end
        if((count==1)&&(i+30>left_Brachial_Point(length(left_Brachial_Point))+130))            %% 在另一个脉搏周期内又找到新的合适点 
            for temp_0301=left_Brachial_Point(length(left_Brachial_Point))+50:left_Brachial_Point(length(left_Brachial_Point))+130     %%漏掉的半个周期
                temp_sum=0;
                for kkk=-30:30 
                if(data(temp_0301)>=data(temp_0301+kkk))                                                      %%寻找半个周期极大值点            
                      temp_sum=temp_sum+1;
                end
                end
                if((temp_sum>=60)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(left_Brachial_data2(temp_0301+7)>=0)&&(left_Brachial_data2(temp_0301+5)>=0)&&(left_Brachial_data2(temp_0301)>=0))          
                    left_Brachial_Point=[left_Brachial_Point,temp_0301];                                     %%加入新二阶微分极值点   
                    i=temp_0301;
                    break;
                end
            end

          if(temp_0301==left_Brachial_Point(length(left_Brachial_Point))+130)                    %%条件太严格60，半个周期极大值点没有找到 
              for temp_0301=left_Brachial_Point(length(left_Brachial_Point))+50:left_Brachial_Point(length(left_Brachial_Point))+130
                  temp_sum=0;
                  for kkk=-30:30 
                  if(data(temp_0301)>=data(temp_0301+kkk))                                                   %%降低条件59，重新寻找 
                      temp_sum=temp_sum+1;
                  end
                  end
                  if((temp_sum>=59)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(left_Brachial_data2(temp_0301+7)>=0)&&(left_Brachial_data2(temp_0301+5)>=0)&&(left_Brachial_data2(temp_0301)>=0))          
                    left_Brachial_Point=[left_Brachial_Point,temp_0301];
                    i=temp_0301;
                    break;
                  end
              end
          end
          
         if(temp_0301==left_Brachial_Point(length(left_Brachial_Point))+130)                    %%条件太严格59，半个周期极大值点没有找到 
              for temp_0301=left_Brachial_Point(length(left_Brachial_Point))+50:left_Brachial_Point(length(left_Brachial_Point))+130
                  temp_sum=0;
                  for kkk=-30:30 
                  if(data(temp_0301)>=data(temp_0301+kkk))                                                 %%降低条件58，重新寻找
                      temp_sum=temp_sum+1;
                  end
                  end
                  if((temp_sum>=58)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(left_Brachial_data2(temp_0301+7)>=0)&&(left_Brachial_data2(temp_0301+5)>=0)&&(left_Brachial_data2(temp_0301)>=0))          
                    left_Brachial_Point=[left_Brachial_Point,temp_0301];
                    i=temp_0301;
                    break;
                  end
              end
          end
          
          
        end  

        
        
%         if((count==1)&&(i+30>left_Brachial_Point(length(left_Brachial_Point))+130))
%            left_Brachial_Point=[left_Brachial_Point,round((i+30+left_Brachial_Point(length(left_Brachial_Point)))/2)];
%            left_Brachial_Point=[left_Brachial_Point,i+30];
%         end
%         if(length(left_Brachial_Point)>=3)
%         if((count==1)&&(i+30>left_Brachial_Point(length(left_Brachial_Point))+130)&&(i+30<2*left_Brachial_Point(length(left_Brachial_Point))+130-left_Brachial_Point(length(left_Brachial_Point)-1)))
%            left_Brachial_Point=[left_Brachial_Point,round((i+30+left_Brachial_Point(length(left_Brachial_Point)))/2)];
%            left_Brachial_Point=[left_Brachial_Point,i+30];
%         end
%         if((count==1)&&(i+30>2*left_Brachial_Point(length(left_Brachial_Point))+130-left_Brachial_Point(length(left_Brachial_Point)-1)))
%            temp_0229=(i+30-left_Brachial_Point(length(left_Brachial_Point)))/(left_Brachial_Point(length(left_Brachial_Point))-left_Brachial_Point(length(left_Brachial_Point)-1))
%            temp_0229=round(temp_0229);
%            for teshu=1:temp_0229-1
%                left_Brachial_Point=[left_Brachial_Point, 2*left_Brachial_Point(length(left_Brachial_Point))-left_Brachial_Point(length(left_Brachial_Point)-1)];
%            end
%            left_Brachial_Point=[left_Brachial_Point,i+30];
%         end    
%         end
    end
    if(count==2)
        break;
    end  
    i=i+1;
end

hold on;


% left_Brachial_Point=left_Brachial_Point+1;

plot(left_Brachial_Point,beifen_data(left_Brachial_Point),'ro') ;                                      %%绘制二阶微分极大值点对应的原始数据
% axis([0,length(data),500,700])
% plot(right_Ankle_Point(1),data(right_Ankle_Point(1)),'ro',right_Ankle_Point(2),data(right_Ankle_Point(2)),'ro')





data=importdata('C:\Users\sunming\Desktop\PWV\4.txt');

figure;

plot(data);

beifen_data=data;                                                                                           % 原始脉搏波数据                                                 

right_Brachial_data2=diff(data);                                                                     % 一阶差分  
 
right_Brachial_data3=diff(right_Brachial_data2);                                           % 二阶差分  

right_Brachial_data2=(round(right_Brachial_data2.*100))./100;                   %  定点化

right_Brachial_data3=(round(right_Brachial_data3.*100))./100;                  %  定点化 

right_Brachial_data3(abs(right_Brachial_data3)<0.00001)=0;                      % 最小分辨率

data=right_Brachial_data3;

count=0;

right_Brachial_Point=[];

i=100;

while(i<=length(data)-100)
    if  ((data(i+30)>=data(i))&&(data(i+30)>=data(i+1))&&(data(i+30)>=data(i+2))&&(data(i+30)>=data(i+3))&&(data(i+30)>=data(i+4))&&...
        (data(i+30)>=data(i+5))&&(data(i+30)>=data(i+6))&&(data(i+30)>=data(i+7))&&(data(i+30)>=data(i+8))&&(data(i+30)>=data(i+9))&&...
        (data(i+30)>=data(i+10))&&(data(i+30)>=data(i+11))&&(data(i+30)>=data(i+12))&&(data(i+30)>=data(i+13))&&(data(i+30)>=data(i+14))&&...
        (data(i+30)>=data(i+15))&&(data(i+30)>=data(i+16))&&(data(i+30)>=data(i+17))&&(data(i+30)>=data(i+18))&&(data(i+30)>=data(i+19))&&...
        (data(i+30)>=data(i+20))&&(data(i+30)>=data(i+21))&&(data(i+30)>=data(i+22))&&(data(i+30)>=data(i+23))&&(data(i+30)>=data(i+24))&&...
        (data(i+30)>=data(i+25))&&(data(i+30)>=data(i+26))&&(data(i+30)>=data(i+27))&&(data(i+30)>=data(i+28))&&(data(i+30)>=data(i+29))&&...
        (data(i+30)>=data(i+31))&&(data(i+30)>=data(i+32))&&(data(i+30)>=data(i+33))&&(data(i+30)>=data(i+34))&&(data(i+30)>=data(i+35))&&...
        (data(i+30)>=data(i+36))&&(data(i+30)>=data(i+37))&&(data(i+30)>=data(i+38))&&(data(i+30)>=data(i+39))&&(data(i+30)>=data(i+40))&&...
        (data(i+30)>=data(i+41))&&(data(i+30)>=data(i+42))&&(data(i+30)>=data(i+43))&&(data(i+30)>=data(i+44))&&(data(i+30)>=data(i+45))&&...
        (data(i+30)>=data(i+46))&&(data(i+30)>=data(i+47))&&(data(i+30)>=data(i+48))&&(data(i+30)>=data(i+49))&&(data(i+30)>=data(i+50))&&...
        (data(i+30)>=data(i+51))&&(data(i+30)>=data(i+52))&&(data(i+30)>=data(i+53))&&(data(i+30)>=data(i+54))&&(data(i+30)>=data(i+55))&&...
        (data(i+30)>=data(i+56))&&(data(i+30)>=data(i+57))&&(data(i+30)>=data(i+58))&&(data(i+30)>=data(i+59))&&(data(i+30)>=data(i+60))&&(beifen_data(i+30)<beifen_data(i+55))&&(right_Brachial_data2(i+37)>=0)&&(right_Brachial_data2(i+30)>=0)&&(right_Brachial_data2(i+35)>=0))  %&&(max(beifen_data(i+30:i+45))-beifen_data(i+30)>6)
%        (right_Brachial_data2(i+30)>=0)&&(right_Brachial_data2(i+31)>=0)&&(right_Brachial_data2(i+32)>=0)&&(right_Brachial_data2(i+33)>=0))
                                                                                                                                        %%   寻找二阶微分极大值点，60可能为半个脉搏周期 
        if(count==0)                                                                           %第三个点出了问题，想办法解决
            right_Brachial_Point=[right_Brachial_Point,i+30];                                               %%  初始化该二阶微分极值点
            count=count+1;
        end
                                                                                                                                          %% 在另半个脉搏周期内又找到新的合适点 
        if((count==1)&&(i+30>right_Brachial_Point(length(right_Brachial_Point))+60)&&(i+30<right_Brachial_Point(length(right_Brachial_Point))+130))
            right_Brachial_Point=[right_Brachial_Point,i+30];                                                %% 加入新二阶微分极值点
%             count=count+1;
        end
        
        
        
        
%         if((count==1)&&(i+30>right_Brachial_Point(length(right_Brachial_Point))+130)&&(i+30<=right_Brachial_Point(length(right_Brachial_Point))+210))
%            right_Brachial_Point=[right_Brachial_Point,round((i+30+right_Brachial_Point(length(right_Brachial_Point)))/2)];
%            right_Brachial_Point=[right_Brachial_Point,i+30];
%         end
        if((count==1)&&(i+30>right_Brachial_Point(length(right_Brachial_Point))+130))          %% 在另一个脉搏周期内又找到新的合适点        
            
            for temp_0301=right_Brachial_Point(length(right_Brachial_Point))+50:right_Brachial_Point(length(right_Brachial_Point))+130      %%漏掉的半个周期 
                
                temp_sum=0;
                
                for kkk=-30:30 
                if(data(temp_0301)>=data(temp_0301+kkk))                                                          %%寻找半个周期极大值点                                             
                     temp_sum=temp_sum+1;
                end
                end                                                                                                                             
                if((temp_sum>=60)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(right_Brachial_data2(temp_0301+7)>=0)&&(right_Brachial_data2(temp_0301)>=0)&&(right_Brachial_data2(temp_0301+5)>=0))          
                    right_Brachial_Point=[right_Brachial_Point,temp_0301];                                    %%加入新二阶微分极值点
                    i=temp_0301; 
                    break;
                end
            end
            
         if(temp_0301==right_Brachial_Point(length(right_Brachial_Point))+130)                      %%条件太严格60，半个周期极大值点没有找到          
             for temp_0301=right_Brachial_Point(length(right_Brachial_Point))+50:right_Brachial_Point(length(right_Brachial_Point))+130
                temp_sum=0;
                for kkk=-30:30 
                if(data(temp_0301)>=data(temp_0301+kkk))                                                            %%降低条件59，重新寻找   
                     temp_sum=temp_sum+1;
                end
                end
                if((temp_sum>=59)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(right_Brachial_data2(temp_0301+7)>=0)&&(right_Brachial_data2(temp_0301)>=0)&&(right_Brachial_data2(temp_0301+5)>=0))          
                    right_Brachial_Point=[right_Brachial_Point,temp_0301];
                    i=temp_0301;
                    break;
                end
             end           
         end
          
         if(temp_0301==right_Brachial_Point(length(right_Brachial_Point))+130)                        %%条件太严格59，半个周期极大值点没有找到
             for temp_0301=right_Brachial_Point(length(right_Brachial_Point))+50:right_Brachial_Point(length(right_Brachial_Point))+130
                temp_sum=0;
                for kkk=-30:30 
                if(data(temp_0301)>=data(temp_0301+kkk))                                                            %%降低条件58，重新寻找
                     temp_sum=temp_sum+1;
                end
                end
                if((temp_sum>=58)&&(beifen_data(temp_0301)<beifen_data(temp_0301+25))&&(right_Brachial_data2(temp_0301+7)>=0)&&(right_Brachial_data2(temp_0301)>=0)&&(right_Brachial_data2(temp_0301+5)>=0))          
                    right_Brachial_Point=[right_Brachial_Point,temp_0301];
                    i=temp_0301;
                    break;
                end
             end           
          end
                
        end  
        
        
        
%         if((count==1)&&(i+30>right_Brachial_Point(length(right_Brachial_Point))+130))
%            right_Brachial_Point=[right_Brachial_Point,round((i+30+right_Brachial_Point(length(right_Brachial_Point)))/2)];
%            right_Brachial_Point=[right_Brachial_Point,i+30];
%         end
%         if(length(right_Brachial_Point)>=3)
%         if((count==1)&&(i+30>right_Brachial_Point(length(right_Brachial_Point))+130)&&(i+30<2*right_Brachial_Point(length(right_Brachial_Point))+130-right_Brachial_Point(length(right_Brachial_Point)-1)))
%            right_Brachial_Point=[right_Brachial_Point,round((i+30+right_Brachial_Point(length(right_Brachial_Point)))/2)];
%            right_Brachial_Point=[right_Brachial_Point,i+30];
%         end
%         if((count==1)&&(i+30>2*right_Brachial_Point(length(right_Brachial_Point))+130-right_Brachial_Point(length(right_Brachial_Point)-1)))
%            temp_0229=(i+30-right_Brachial_Point(length(right_Brachial_Point)))/(right_Brachial_Point(length(right_Brachial_Point))-right_Brachial_Point(length(right_Brachial_Point)-1))
%            temp_0229=round(temp_0229);
%            for teshu=1:temp_0229-1
%                right_Brachial_Point=[right_Brachial_Point,2*right_Brachial_Point(length(right_Brachial_Point))-right_Brachial_Point(length(right_Brachial_Point)-1)];
%            end
%            right_Brachial_Point=[right_Brachial_Point,i+30];
%         end    
%         end
        
    end
    if(count==2)
        break;
    end  
    i=i+1;
end


hold on ;    

% right_Brachial_Point=right_Brachial_Point+1;

plot(right_Brachial_Point,beifen_data(right_Brachial_Point),'ro')                             %%绘制二阶微分极大值点对应的原始数据         
% axis([0,3000,500,600]) 
% axis([0,length(data),500,700])
% plot(right_Ankle_Point(1),data(right_Ankle_Point(1)),'ro',right_Ankle_Point(2),data(right_Ankle_Point(2)),'ro')


if((length(left_Ankle_Point)<=3)||(length(right_Ankle_Point)<=3)||(length(left_Brachial_Point)<=3)||(length(right_Brachial_Point)<=3))  
                                                                                                                                    %%点数太少
    parameter=zeros(16,1);
    parameter(2,1)=0;                                     
    parameter(3,1)=0;                                                                    
    parameter(5,1)=0;                                                                    
    parameter(6,1)=0;   
    parameter(7,1)=0;                                                                    
    parameter(8,1)=0;   
    parameter(9,1)=0;                                                                    
    parameter(10,1)=0;   
    parameter(11,1)=0;                                                                    
    parameter(12,1)=0;    
    parameter(13,1)=0;                                                                    
    parameter(14,1)=0;   
    parameter(15,1)=0;                                                                    
    parameter(16,1)=0;  
    jieguo0=sprintf('%d\n',parameter(1:16)) ;
    break;
end

     
       
PeakNum=[length(left_Ankle_Point),length(right_Ankle_Point),length(left_Brachial_Point),length(right_Brachial_Point)];       %特征点序列

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                       %%%%%%%计算PPTT%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


if((left_Brachial_Point(1)<left_Ankle_Point(1))&&(left_Brachial_Point(2)>left_Ankle_Point(1)))                 % 在一个动脉周期，并且初始股动脉比初始裸动脉早到
    left_PTTba= left_Ankle_Point(1)-left_Brachial_Point(1);                                                                           % 计算脉搏波传输延迟     PPTT
else
    if(left_Brachial_Point(1)>left_Ankle_Point(1))                                                                                           %初始股动脉比初始裸动脉晚到
       for i=1:length(left_Ankle_Point)-1
            if(left_Ankle_Point(i)<left_Brachial_Point(1)&&left_Ankle_Point(i+1)>left_Brachial_Point(1))        % 寻找与初始股动脉对应的裸动脉 
                 left_PTTba= left_Ankle_Point(i+1)-left_Brachial_Point(1);                                                           % 计算脉搏波传输延迟     PPTT            
                 PeakNum(1)=PeakNum(1)-i;                                                                                                       % 个数更改
                 left_Ankle_Point(1:i)=[];                                                                                                                %  前面的无用特征点清空
                 break;
            end
        end
        
    end
    
    

    if((left_Brachial_Point(2)<left_Ankle_Point(1))&&(left_Brachial_Point(3)>left_Ankle_Point(1)))            % 股动脉比初始裸动脉早到一个周期     
        left_PTTba= left_Ankle_Point(1)-left_Brachial_Point(2);                                                                      % 计算脉搏波传输延迟     PPTT ，寻找与初始裸动脉对应的股动脉                                                        
        PeakNum(3)=PeakNum(3)-1;                                                                                                              %  个数更改 
        left_Brachial_Point(1)=[];                                                                                                                      %  前面的无用特征点清空
    else
        for i=2:length(left_Brachial_Point)-1                                                                                                    %  股动脉比初始裸动脉早到N个周期
            if(left_Brachial_Point(i)<left_Ankle_Point(1)&&left_Brachial_Point(i+1)>left_Ankle_Point(1))       %  寻找与初始裸动脉对应的股动脉
                 left_PTTba= left_Ankle_Point(1)-left_Brachial_Point(i);                                                               %  计算脉搏波传输延迟     PPTT
                 PeakNum(3)=PeakNum(3)-i+1;                                                                                                   % 个数更改
                 left_Brachial_Point(1:i-1)=[];                                                                                                         %  前面的无用特征点清空
                 break;
            end
        end
    end
   
     
end



if((right_Brachial_Point(1)<right_Ankle_Point(1))&&(right_Brachial_Point(2)>right_Ankle_Point(1)))             %  在一个动脉周期，并且初始股动脉比初始裸动脉早到        
    right_PTTba= right_Ankle_Point(1)-right_Brachial_Point(1);                                                                         %  计算脉搏波传输延迟     PPTT  
else
    if(right_Brachial_Point(1)>right_Ankle_Point(1))                                                                                            % 初始股动脉比初始裸动脉晚到                                                                      
        for i=1:length(right_Ankle_Point)-1
            if(right_Ankle_Point(i)<right_Brachial_Point(1)&&right_Ankle_Point(i+1)>right_Brachial_Point(1))    % 寻找与初始股动脉对应的裸动脉 
                 right_PTTba= right_Ankle_Point(i+1)-right_Brachial_Point(1);                                                          % 计算脉搏波传输延迟     PPTT               
                 PeakNum(2)=PeakNum(2)-i;                                                                                                              % 个数更改 
                 right_Ankle_Point(1:i)=[];                                                                                                                    %  前面的无用特征点清空 
                 break;
            end
        end
    end
    if((right_Brachial_Point(2)<right_Ankle_Point(1))&&(right_Brachial_Point(3)>right_Ankle_Point(1)))          % 股动脉比初始裸动脉早到一个周期  
        right_PTTba= right_Ankle_Point(1)-right_Brachial_Point(2);                                                                       % 计算脉搏波传输延迟     PPTT ，寻找与初始裸动脉对应的股动脉     
        PeakNum(4)=PeakNum(4)-1;                                                                                                                      %  个数更改
        right_Brachial_Point(1)=[];                                                                                                                            %  前面的无用特征点清空
    else
        for i=2:length(right_Brachial_Point)-1
            if(right_Brachial_Point(i)<right_Ankle_Point(1)&&right_Brachial_Point(i+1)>right_Ankle_Point(1))     %  股动脉比初始裸动脉早到N个周期   
                 right_PTTba= right_Ankle_Point(1)-right_Brachial_Point(i);                                                               %  寻找与初始裸动脉对应的股动脉    
                 PeakNum(4)=PeakNum(4)-i+1;                                                                                                          % 个数更改
                 right_Brachial_Point(1:i-1)=[];                                                                                                             %  前面的无用特征点清空
                 break;
            end
        end
    end
end

 right_Ankle_Point(1);

left_sum      = 0;

left_count   = 0;

left_minus   = [];

% if(PeakNum(1)<=PeakNum(3))
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                             %%%%%%%%%另外一种计算PPTT的方式%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                                                                     %%左侧              %%另外一种计算PPTT的方式
     for i=1:min([PeakNum(1),PeakNum(3)])-1
         
         for j=i:min([PeakNum(1),PeakNum(3)])-1
             
         if(left_Ankle_Point(i)>left_Brachial_Point(j)&&left_Ankle_Point(i)<left_Brachial_Point(j+1))
             
           left_sum      =    left_Ankle_Point(i)-left_Brachial_Point(j)+left_sum;                             %%总延迟
           
           left_minus   =   [left_minus,left_Ankle_Point(i)-left_Brachial_Point(j)];                          %%延迟序列
           
           left_count    =   left_count+1;                                                                                        %%延迟个数
         end
         
         end
         
     end
     

     
left_mean    =    mean(left_minus);                                                                      %%延迟序列均值             

left_paixu    =     sort(left_minus);                                                                         %%延迟序列排序                                                    

left_length  =      length(left_paixu);

if(left_count>8)                                                                                                     %%延迟序列个数超过8个    ？？？
    
left_sum     =      0;

left_start     =     round(left_length*1/4);  %1/4 和3/4                                         %%截取中间部分开始  

left_stop     =     round(left_length*3/4);                                                              %%截取中间部分结束

for i=left_start:left_stop
     left_sum =  left_sum+left_paixu(i)  ;                                                               %%截取中间部分
end
     left_count=left_stop-left_start+1;

 end;    
     
     
  left_PTTba=left_sum/left_count;                                                             %% 另外一种计算PPTT的方式结果（求均值）        
     
%      left_PTTba=left_paixu(round(left_length/2));
% % else
%     for i=1:PeakNum(3)
%          sum=left_Ankle_Point(i)-left_Brachial_Point(i)+sum;  
%      end
%      left_PTTba=sum/PeakNum(3);
% end

right_sum   =0;

right_count =0;


right_minus =[];

% if(PeakNum(2)<=PeakNum(4))    
                                                                                                                         %%右侧              %%另外一种计算PPTT的方式
for i=1:min([PeakNum(2),PeakNum(4)])-1                                                                        
         for j=i:1:min([PeakNum(2),PeakNum(4)])-1
         if(right_Ankle_Point(i)>right_Brachial_Point(j)&&right_Ankle_Point(i)<right_Brachial_Point(j+1))
           right_sum     =    right_Ankle_Point(i)-right_Brachial_Point(j)+right_sum;                       %%总延迟
           right_minus  =    [right_minus,right_Ankle_Point(i)-right_Brachial_Point(j)];                   %%延迟序列  
           right_count  =    right_count+1;                                                                                       %%延迟个数  
         end
         end
end

right_mean=mean(right_minus)  ;                                                                                             %%延迟序列均值

right_paixu=sort(right_minus);                                                                                                  %%延迟序列排序  

right_length=length(right_paixu);                                                                                             

if(right_count>8)                                                                                                                       %%延迟序列个数超过8个    ？？？
right_sum=0;

right_start=round(right_length*1/4);  %1/4 和3/4                                                                  %%截取中间部分开始  

right_stop=round(right_length*3/4);                                                                                       %%截取中间部分结束


for i=right_start:right_stop
    
     right_sum=right_sum+right_paixu(i);                                                                                  %%截取中间部分（用于计算PPTT）                                 
     
end;    

right_count=right_stop-right_start+1;

     
end
 
% for i=1:min([PeakNum(2),PeakNum(4)])
%          if(right_Ankle_Point(i)<right_Brachial_Point(i))
%              continue;
%          end
%          right_sum=right_Ankle_Point(i)-right_Brachial_Point(i)+right_sum;  
%          right_count=right_count+1;
%      end

right_PTTba=right_sum/right_count;                                                                                    %%另外一种计算PPTT的方式结果（求均值）

     
%        right_PTTba=right_paixu(round(right_length/2));
% else
%     for i=1:PeakNum(4)
%          sum=right_Ankle_Point(i)-right_Brachial_Point(i)+sum;  
%      end
%      right_PTTba=sum/PeakNum(4);
% end

figure ;                                                                                                                                %%%特征点序列  
plot(left_Ankle_Point+1,'r') ;

hold on;

plot(left_Brachial_Point+1,'b');

legend('left Ankle_Point','left Brachial_Point');

figure;

plot(right_Ankle_Point+1,'r');

hold on;

plot(right_Brachial_Point+1,'b');

legend('right_Ankle_Point','right Brachial_Point'); 

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                        %%%计算PPTV%%%%%%%%%%%%%%%
                                        %%%该方法值得商榷！！！%%%%%%%%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


height=high;                                                                                                         %%人体身高
                                                              
La     =  0.2195*height-2.07340;                                                                          %% 参数A计算                  

Lb=0.5643*height-18.381+0.2486*height+30.709;                                            %% 参数B计算

Distance=Lb-La;                                                                                                    %% 距离

left_PWV=(Lb-La)*100/left_PTTba;                                                                        %%计算PPTV

right_PWV=(Lb-La)*100/right_PTTba;                                                                    %%计算PPTV




Ankle_left_bloodPress;

Ankle_right_bloodPress;

Brachial_left_bloodPress;

Brachial_right_bloodPress;

left_PWV;

right_PWV;

Ankle_left_dingdian;

Ankle_right_dingdian;

Brachial_left_dingdian;

Brachial_right_dingdian;

format bank;

parameter=zeros(16,1);

parameter(1,1)=round(Ankle_left_bloodPress/10);                                         %%平均压  

parameter(2,1)=round(Ankle_right_bloodPress/10);                                       %%平均压       

parameter(3,1)=round(Brachial_left_bloodPress/10);                                      %%平均压     

parameter(4,1)=round(Brachial_right_bloodPress/10);                                    %%平均压  

parameter(5,1)=round(Ankle_left_Diastolic/10);                                              %%舒张压

parameter(6,1)=round(Ankle_right_Diastolic/10);                                            %%舒张压

parameter(7,1)=round(Brachial_left_Diastolic/10);                                           %%舒张压                         

parameter(8,1)=round(Brachial_right_Diastolic/10);                                         %%舒张压

parameter(9,1)=round(Ankle_left_dingdian/10);                                               %%顶点？？？？   

parameter(10,1)=round(Ankle_right_dingdian/10);   

parameter(11,1)=round(Brachial_left_dingdian/10);     

parameter(12,1)=round(Brachial_right_dingdian/10);  


if((parameter(9,1)<70)&&(parameter(9,1)>30))                                           %%   ？？？？%%%
    
    parameter(1,1)=parameter(9,1)+30;                                                          %% 平均压
    
    parameter(5,1)=parameter(9,1)-10;                                                           %%舒张压
    
end

if((parameter(10,1)<70)&&(parameter(10,1)>30))                                     %%   ？？？？%%%
    
    parameter(2,1)=parameter(10,1)+30;                                                      %% 平均压
    
    parameter(6,1)=parameter(10,1)-10;                                                       %% 舒张压
    
end

if((parameter(11,1)<70)&&(parameter(11,1)>30))                                     %%   ？？？？%%% 
    
    parameter(3,1)=parameter(11,1)+30;                                                      %% 平均压
    
    parameter(7,1)=parameter(11,1)-10;                                                        %% 舒张压
    

end

if((parameter(12,1)<70)&&(parameter(12,1)>30))                                    %%   ？？？？%%%
     
   parameter(4,1)   =parameter(12,1)+30;                                                  %%  平均压                   
   
    parameter(8,1)  =  parameter(12,1)-10;                                                  %% 舒张压
end



if(parameter(1,1)<parameter(9,1))                                                               %%顶点
    
    parameter(1,1)  =  2*parameter(9,1)-parameter(1,1);                             %%平均压更改
end


if(parameter(2,1)<parameter(10,1))                                                            %%顶点
    
   parameter(2,1)=2*parameter(10,1)-parameter(2,1);                                %%平均压更改 
   
end


if(parameter(3,1)<parameter(11,1))                                                         %%顶点                
    
    parameter(3,1) =  2*parameter(11,1)-parameter(3,1);                         %%平均压更改
    
end

if(parameter(4,1)<parameter(12,1))                                                          %%顶点
    
    
    parameter(4,1)  =  2*parameter(12,1)-parameter(4,1);                       %%平均压更改    
    
end


if(parameter(5,1)>parameter(9,1))                                                           %%顶点
    
    parameter(5,1)=  2*parameter(9,1)-parameter(5,1);                           %%舒张压更改
    
end


if(parameter(6,1)>parameter(10,1))                                                         %%顶点
    
    parameter(6,1) = 2*parameter(10,1)-parameter(6,1);                          %%舒张压更改
    
end


if(parameter(7,1)>parameter(11,1))                                                        %%顶点                                           
    
    parameter(7,1) = 2*parameter(11,1)-parameter(7,1);                        %%舒张压更改
    
end



if(parameter(8,1)>parameter(12,1))                                                        %%顶点   
    
    parameter(8,1)=  2*parameter(12,1)-parameter(8,1);                         %%舒张压更改
    
end


   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                         %%%%计算ABI%%%%%%%%
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



if(parameter(3,1)>parameter(4,1))                                                                   %%左侧股动脉平均压大于右侧股动脉平均压
    
left_ABI     =    floor((parameter(1,1)/parameter(3,1)+0.005)*100)/100;

right_ABI   =   floor((parameter(2,1)/parameter(3,1)+0.005)*100)/100;

else                                                                                                                 %%左侧股动脉平均压小于右侧股动脉平均压            
    
left_ABI   =    floor((parameter(1,1)/parameter(4,1)+0.005)*100)/100;

right_ABI =    floor((parameter(2,1)/parameter(4,1)+0.005)*100)/100;
    
end



parameter(13,1)   =   left_ABI;    

parameter(14,1)   =   right_ABI;   

parameter(15,1)   =   round(left_PWV);     

parameter(16,1)   =    round(right_PWV);  

jieguo                  = sprintf('%d\n',parameter(1:4));

jieguo0               =  sprintf('%d\n',parameter(9:12));

jieguo1               =  sprintf('%d\n',parameter(5:8));

jieguo2               =  sprintf('%.2f\n',parameter(13:14));

jieguo3              =   sprintf('%d\n',parameter(15:16));

jieguo                =  [jieguo,jieguo0,jieguo1,jieguo2,jieguo3];

% sprintf('%7.2f\n',parameter) 
xlswrite('结果参数',parameter);     

% baPWV=(Lb-La)/PTTba

left_paixu';


right_paixu';


Distance;

%人体正常心率是60-100，对于新生儿童，可能会出现心率大于100的情况，即两个脉搏波相差60个点，所以60未必是非常合适的数字，应该比60要小一些，或者50或者55，后续完善
%会出现小波峰的问题，也是需要后续完善的
%sunming-17，suning-18 滤波后的数据就不是很好，所以仍然需要完善
