function NegativeImage()
image = imread('Photo.jpg');
subplot(1,2,1);
imshow(image);

newimage = imcomplement(image);
subplot(1,2,2);
imshow(newimage);

end