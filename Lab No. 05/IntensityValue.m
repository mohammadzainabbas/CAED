function IntensityValue()
image=imread('Modified.png');
newimage=Array(image);
plot(newimage);
end
function a=Array(image)
[x,y]=image;
for i=1:1:x
for j=1:1:y
  for k=1:1:256
      count=0;
   if (image(i,j)==k)
       count=count+1;
   end
   a(k)=count;
  end
end
end
end