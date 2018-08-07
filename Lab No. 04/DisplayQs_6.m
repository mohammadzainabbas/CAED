function DisplayQs_6 ()
%image=dir('C:\MATLAB\Lab No. 04\Photos\*.jpg');
image=imread('Image.jpg');
startpoint=input('Enter your starting point : ');
disp('How much you want to crop ? ');
height =input('Vertically : ');
width=input('Horizontally : ');
a=CropImage(image,startpoint,height,width);
imshow(a);
end

function [cropped]=CropImage (image,startpoint,height,width)
cropped=image(startpoint:1:startpoint+width,startpoint:1:startpoint+height);
end