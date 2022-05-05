I = imread('C:\Users\SRTINNI\Desktop\41 Lab\DIP_LAB_\img1.png');
a=rgb2gray(I);
subplot(2,1,1)
imshow(a)

subplot(2,1,2)
imshow(a,colormap(gray(2^(8-1))))