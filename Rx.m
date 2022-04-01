clc
clear
pic_num = 1;
%Éú³Égif
for n=0:pi*0.05:pi*2
    cube(2,rotx(n));
   
    F=getframe(gcf);
    I=frame2im(F);
    [I,map]=rgb2ind(I,256);

    if pic_num == 1
    imwrite(I,map,'Rx.gif','gif','Loopcount',inf,'DelayTime',0.2);

    else
    imwrite(I,map,'Rx.gif','gif','WriteMode','append','DelayTime',0.2);

    end

    pic_num = pic_num + 1;
end