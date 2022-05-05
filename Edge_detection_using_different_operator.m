% Edge detection using different operator
I = imread('coins.png');
subplot(3,1,1)
imshow(I)
%Apply the Sobel edge detector to the unfiltered input image. Then, apply the Canny edge detector to the unfiltered input image.
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');
%Display the filtered images side-by-side for comparison.
%tiledlayout(1,2)

%nexttile
subplot(3,1,2)
imshow(BW1)
title('Sobel Filter')

%nexttile
subplot(3,1,3)
imshow(BW2)
title('Canny Filter')