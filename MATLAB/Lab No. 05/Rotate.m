function Rotate()
image = imread('Photo.jpg');
angle = input('Enter your angle : ');
rotatedimage = imrotate(image,angle);
imshow(rotatedimage);
end
