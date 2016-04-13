function  [dingdian]=bloodPress_1(filename2)

      %%平均压

filename=filename2;


A=textread(filename,'%d');

len=length(A);

[max_y,max_x]=max(A);

figure(1);

plot(A);

hold on ;

plot(max_x,max_y,'ro') ;

hold on ;

start=max_x;

guaidianNum=1;

guaidian=[max_x];

for start=max_x:len-5
                                                                                  % two  step   
    if((A(start+1)-A(start)>=1)&&(A(start+2)-A(start)>=1)&&(A(start+3)-A(start)>=2)&&(A(start+4)-A(start)>=2)&&(A(start+5)-A(start)>=3))  
        
        if((start-guaidian(guaidianNum)>65))%&&(start>200) %60以后可以尝试一下     % 0.65s         
            
          guaidianNum=guaidianNum+1;
          
          guaidian=[guaidian,start];                                           %找拐点
          
          plot(guaidian(guaidianNum),A(guaidian(guaidianNum)),'ro') ;
          
          hold on ;
          
       end
    end
end

if(guaidianNum<=2)
   dingdian=-10;
   return 
end
    


guaidian=guaidian(2:guaidianNum);

guaidianNum=guaidianNum-1; 


maibobo_y=[];

yali=[];

for i=1:guaidianNum-1
    
    plotX=[guaidian(i+1),guaidian(i)];
    
    plotY=[A(guaidian(i+1)),A(guaidian(i))];
    
    xishu=polyfit(plotX,plotY,1);                                          %  一次多项式拟合系数
    
    py2=polyval(xishu,guaidian(i):guaidian(i+1));               %  一次多项式拟合
    
    temp=A(guaidian(i):guaidian(i+1))-py2';                      %   拟合差值     
    
    temp=temp(2:length(temp));
    
    py2=py2(2:length(py2));
    
    yali=[yali,py2];
    
    maibobo_y=[maibobo_y;temp];                                     %  拟合差值  （脉搏波数据）  
    
end


maibobo_x = guaidian(1):guaidian(1)+length(maibobo_y)-1;                             

 

plot(maibobo_x,maibobo_y'*10);                                        %   

hold on ;

yali_x              =  max_x:len;                                                                            

yali_y_front    =  A(max_x:guaidian(1));                              %   第一个拐点              

yali_y_behind =  A(guaidian(guaidianNum)+1:len);          %   最后一个拐点

yali_y             =  [yali_y_front',yali];

yali_y             =  [yali_y,yali_y_behind'];                              %   拟合值替代中间部分

% plot(yali_x,yali_y)

plot(yali_x,yali_y-100);                                                          %  为啥减掉100   画图方便                      

dlmwrite('C:\Users\sunming\Desktop\ABI\5.txt',yali_y,'delimiter', '\n','precision','%d');

dlmwrite('C:\Users\sunming\Desktop\ABI\6.txt',A(max_x:len),'delimiter', '\n','precision','%d');

hold on ；

[maibobo_max_y,maibobo_max_x]=max(maibobo_y);       % 拟合差值最大值（脉搏波最大值（平均压））

plot(maibobo_x(maibobo_max_x),maibobo_max_y*10,'ro');     

%分析数据的获得过程，看是否是减了100的原因text(maibobo_x,maibobo_y','x:y:')

hold on  ；

plot(maibobo_x(maibobo_max_x),yali_y(maibobo_max_x+guaidian(1)-max_x+1)-100,'ro');             % 

c=[num2str(yali_y(maibobo_max_x+guaidian(1)-max_x+1))];

dingdian=yali_y(maibobo_max_x+guaidian(1)-max_x+1);

text(maibobo_x(maibobo_max_x),yali_y(maibobo_max_x+guaidian(1)-max_x+1)+100,c);

if(maibobo_max_y*10<120)
    
      dingdian=0;
        
end




    
    

