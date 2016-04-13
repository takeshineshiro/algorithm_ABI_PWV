%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                  %%%%%%% butterworth定点化%%%%%%%%%%
                   %%%author:wong%%%%%%%%%%%%%%%%%
                   %%%%email:takeshineshiro@126.com%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     clc  ;
     
    clear ;
    
    clear   all  ;
    
    fs              =     800  ;          % Hz  
      
    fc              =     10    ;          % Hz
    
    %%%%%%%%%%%%%%%source   data  load%%%%%%%%%%%%%%%%%%%%%%
       impulse_source   =   load    ('20160310(800HZsun_2.txt') ;  
     
     impulse_source    =   impulse_source' ;
        
     source_1              =   impulse_source(1,:) ;
    
         
    %%%%%%%%%%butter   filter  %%%%%%%%%%%%%%%%%%%%%%%
            wc          =    2*fc/fs   ;    
       
        [b,a]           =     butter(3,wc);   
        
        
    %%%%%%%保存抽头数据%%%%%%%%%%%%%%%%%%%%%%%%%%% 
       
       dlmwrite('D:\Users\wong\Do',output(start:finish),'delimiter', '\n','precision','%d'); 
        
        butter_filter   =   filter(b,a,source_1)   ;  
        
    %%%%%%%%%%%%%%%%%%量化%%%%%%%%%%%%%%%%%%%%%
                   fix_b    =      b*1  ;
                   
                   fix_a     =      a*1 ;
                   
                   
                   ss_1   =    fix_b(1);
                   
                   ss_2     =   fix_a(1);
                   
   %%%%%%%%%%%%手动编写代码%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       %%%% a(1)*y(n) = b(1)*x(n) + b(2)*x(n-1) + ... + b(nb+1)*x(n-nb) - a(2)*y(n-1) - ... - a(na+1)*y(n-na)              
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    b_len   =    length(fix_b)  ;
                    a_len   =     length(fix_a) ;
                    
                    out      =  []  ;
                    
                  
                    
                    for      i   =   1:a_len-1
                        
                            if (i==1)
                                    
                             out(i)   =   fix_b(1)*source_1(1)/fix_a(1);
                             
                            else
                            
                                
                               temp_b   = 0   ;
                      
                            for   j  =  1:  i
                          
                              temp_b  = temp_b +   fix_b(j)*source_1(i-j+1)  ; 
                          
                           end
                      
                        temp_a   = 0   ;
                        
                        for   j  =  1:  i-1
                          
                             temp_a  = temp_a +  fix_a(j+1)*out(i-j)    ;
                          
                        end
                               
                              
                             out(i)   =   ( temp_b   -temp_a )/fix_a(1)       ; 
                        
                            end    
                            
                            
                   
                    end
                                           
                               
                    
                  for       i  =   a_len   :length(source_1)      
                              
                            temp_b   = 0   ;
                      
                      for   j  =  1:  b_len
                          
                             temp_b  = temp_b +   fix_b(j)*source_1(i-j+1)  ; 
                          
                      end
                      
                        temp_a   = 0   ;
                        
                        for   j  =  1:  a_len-1
                          
                             temp_a  = temp_a +  fix_a(j+1)*out(i-j)    ;
                          
                        end
                      
                      out(i)   =   ( temp_b   -temp_a )/fix_a(1)       ; 
                      
                        
                             
                  end
                  
                                    
     %%%%%%%%%%%%%%%%%%%%%比较误差%%%%%%%%%%%%%%%%%%%%%%%%%
     
                error   =       out  -   butter_filter   ; 
                
                
                
                
                
                
                    
        
        ss  =  [];
      