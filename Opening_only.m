%Morphologically Open Image with a Disk-Shaped Structuring Element
original = imread('snowflakes.png');
imshow(original);
%Create a disk-shaped structuring element with a radius of 5 pixels.
se = strel('disk',5);
%Remove snowflakes having a radius less than 5 pixels by opening it with the disk-shaped structuring elem
afterOpening = imopen(original,se);
figure
imshow(afterOpening,[]);