function DisplayQs_7
image=imread('Image (4).jpg');
startpoint=input('Enter your starting point : ');
disp('How much you want to change color ? ');
height =input('Vertically : ');
width=input('Horizontally : ');
color=input('Enter color intensity 0-255 : ');
a=ChangeIntensity(image,startpoint,height,width,color);
imshow(a);
end

function [Replaced]=ChangeIntensity(image,startpoint,height,width,color)
image(startpoint:1:startpoint+width,startpoint:1:startpoint+height)=color;
Replaced=image;
end