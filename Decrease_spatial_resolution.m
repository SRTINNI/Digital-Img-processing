grayImage = imread('cameraman.tif');
subplot(3,1,1);
imshow(grayImage);
axis on;

smallImage = imresize(grayImage, 1/2, 'nearest');
subplot(3,1,2);
imshow(smallImage);
axis on;

bigImage = imresize(smallImage, 2, 'nearest');
subplot(3,1,3);
imshow(bigImage);
axis on;


%In your picture, you're changing the spatial resolution of the image, 
%not the intensity resolution which is the bit depth.
%Of course if the intensities are only 2 bits, the 
%intensities can be 0, 1, 2, or 3, so of course that's 
%going to be darker than an image with 8 bits where the values can go as high as 255.
%To reduce the spatial resolution of the image, you can use imresize, 
%with the 'nearest' option, both to shrink it and to magnify it.
