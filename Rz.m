clc
clear
pic_num = 1;
%����gif
for n=0:pi*0.05:pi*2
    cube(2,rotz(n));
   
    F=getframe(gcf);
    I=frame2im(F);
    [I,map]=rgb2ind(I,256);

    if pic_num == 1
    imwrite(I,map,'Rz.gif','gif','Loopcount',inf,'DelayTime',0.2);

    else
    imwrite(I,map,'Rz.gif','gif','WriteMode','append','DelayTime',0.2);

    end

    pic_num = pic_num + 1;
end