%1. Remove Noise Using an Averaging Filter and a Median Filter

I = imread('eight.tif');
figure
imshow(I)
%For this example, add salt and pepper noise to the image. 
%This type of noise consists of random pixels being set to black or white (the extremes of the data range).
J = imnoise(I,'salt & pepper',0.02);
figure
imshow(J)
%Filter the noisy image, J, with an averaging filter and display the results. The example uses a 3-by-3 neighborhood.
Kaverage = filter2(fspecial('average',3),J)/255;
figure
imshow(Kaverage)
%Now use a median filter to filter the noisy image, J.
% The example also uses a 3-by-3 neighborhood. Display the two filtered images side-by-side for comparison.
% Notice that medfilt2 does a better job of removing noise, with less blurring of edges of the coins.
Kmedian = medfilt2(J);
imshowpair(Kaverage,Kmedian,'montage')

%2.Remove Noise By Adaptive Filtering
RGB = imread('saturn.png');
%Convert the image from truecolor to grayscale.
I = rgb2gray(RGB);
%Add Gaussian noise to the image
J = imnoise(I,'gaussian',0,0.025);
%Display the noisy image. Because the image is quite large, display only a portion of the image.
imshow(J(600:1000,1:600));
title('Portion of the Image with Added Gaussian Noise');
%Remove the noise using the wiener2 function.
K = wiener2(J,[5 5]);
%Display the processed image. Because the image is quite large, display only a portion of the image.
figure
imshow(K(600:1000,1:600));
title('Portion of the Image with Noise Removed by Wiener Filter');

