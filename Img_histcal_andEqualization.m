%Calculate Histogram
%I = imread('E:\SEMESTER 4.1\LABs\img1.png');
%a=rgb2gray(I)
%a= imread('pout.tif')
%imhist(a)%Display a histogram of the image. Since I is grayscale, by default the histogram will have 256 bins

I = imread('pout.tif');
figure
subplot(1,2,1)
imshow(I)
subplot(1,2,2)
imhist(I,64)
J = histeq(I);
figure
subplot(1,2,1)
imshow(J)
subplot(1,2,2)
imhist(J,64)
I = imread('pout.tif');
[J,T] = histeq(I);
figure
plot((0:255)/255,T);
