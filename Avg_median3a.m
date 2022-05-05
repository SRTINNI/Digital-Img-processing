clc;    % Clear the command window.
workspace;  % Make sure the workspace panel is showing.
clearvars;
close all;
I = imread('eight.tif');
figure
imshow(I)
title('original image')
J = imnoise(I,'salt & pepper',0.02);
figure
imshow(J)
title('Noisy image')

%Filter the noisy image, J, with an averaging filter and display the results. The example uses a 3-by-3 neighborhood.
C=fspecial('average',[5,5]);            %exact 5x5 average filter 
d=imfilter(I,C);
[peaksnr, snr] = psnr(d, J); 
fprintf('\n The Peak-SNR value for avg. filter for 5x5 is %0.4f\n', peaksnr);
%fprintf('\n The SNR value for avg. filter is %0.4f \n', snr);
figure
imshow(d)
title('5x5 mask of avg. filter')


Kmedian = medfilt2(J);
[peaksnr, snr] = psnr(Kmedian, J); 
fprintf('\n The Peak-SNR value for median filter for 5x5 is %0.4f\n', peaksnr);
figure
imshow(Kmedian)
title('5x5 mask of median filter')


%Calculate the PSNR.
%ref = imread('pout.tif');
%A = imnoise(ref,'salt & pepper', 0.02);
%[peaksnr, snr] = psnr(A, ref); 
%fprintf('\n The Peak-SNR value is %0.4f', peaksnr);
%The Peak-SNR value is 22.6437
%fprintf('\n The SNR value is %0.4f \n', snr);
% The SNR value is 15.5524 S

%Peak signal-to-noise ratio (PSNR) is the ratio between
% the maximum possible power of an image and the power 
%of corrupting noise that affects the quality of its 
%representation. To estimate the PSNR of an image, it
% is necessary to compare that image to an ideal clean image with the maximum possible power
%The higher the PSNR, the better the quality of the compressed, or reconstructed image.