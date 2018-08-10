function GrayScale()
image = imread('Photo.jpg');
blacknwhite = rgb2gray(image);
newimage = GrayScaleCropping(blacknwhite);
imshow(newimage);
imwrite(newimage,'Modified.png');
end

function a=GrayScaleCropping(image)
width=input('Enter the width of your square : ');
BorderIntensity=input('Enter Intensity : ');
linewidth=5;
for i=1:1:width+linewidth
    for j=1:1:linewidth
   image(j,i)=BorderIntensity;
   image(i,j)=BorderIntensity;
   image(width+j,i)=BorderIntensity;
   image(i,width+j)=BorderIntensity;
    end
end
a=image;
end