%Morphologically Open Image with a Disk-Shaped Structuring Element
originalBW = imread('snowflakes.png');
imshow(originalBW);
%Create a disk-shaped structuring element with a radius of 5 pixels.
se = strel('disk',5);
%Remove snowflakes having a radius less than 5 pixels by opening it with the disk-shaped structuring elem
afterOpening = imopen(originalBW,se);
figure
imshow(afterOpening,[]);

%Use Morphological Closing to Fill Gaps in an Image
%Read a binary image into the workspace and display it.
%originalBW = imread('cameraman.tif');
%imshow(originalBW);
%Create a disk-shaped structuring element. Use a disk structuring element
% to preserve the circular nature of the object. Specify a radius of 10 pixels so that the largest gap gets filled.
se = strel('disk',10);
%Perform a morphological close operation on the image.
closeBW = imclose(originalBW,se);
figure, imshow(closeBW)