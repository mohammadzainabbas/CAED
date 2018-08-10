function DisplayIntensity()
image = imread('Photo.jpg');
blacknwhite = rgb2gray(image);
first = input('Enter old intensity: ');
second = input ('Enter new intensity: ');
newimage = ChangeIntensity(blacknwhite,first,second);
imshow(newimage);
imwrite(newimage,'Modified.png');
end

function a=ChangeIntensity(image,first,second)
[rows,columns]=image;
for i=1:1:rows
    for j=1:1:columns
  if image(i,j)==first
      image(i,j)=second;
  end
    end
end
a=image;
end