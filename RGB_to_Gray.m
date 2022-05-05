a = imread('E:\SEMESTER 4.1\LABs\img1.png')
subplot(1,2,1)
imshow(a)
title('rgb image')

b = rgb2gray(a)
subplot(1,2,2)
imshow(b)
title('gray image')