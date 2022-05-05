
I = imread('cameraman.tif');
figure,imshow(I);title('Original Image');
%3x3
C=fspecial('average',[3,3]);            %exact 3x3 average filter 
d=imfilter(I,C);
figure,imshow(d);title('3x3 average filter');

[peaksnr, snr] = psnr(d, I); 
fprintf('\n The Peak-SNR value for avg. filter for 3x3 is %0.4f\n', peaksnr);

%5x5
C=fspecial('average',[5,5]);            %exact 5x5 average filter 
d=imfilter(I,C);
figure,imshow(d);title('5x5 average filter');
[peaksnr, snr] = psnr(d, I); 
fprintf('\n The Peak-SNR value for avg. filter for 5x5 is %0.4f\n', peaksnr);

%7x7
C=fspecial('average',[7,7]);            %exact 9x9 average filter 
d=imfilter(I,C);
figure,imshow(d);title('7x7 average filter');
[peaksnr, snr] = psnr(d, I); 
fprintf('\n The Peak-SNR value for avg. filter for 7x7 is %0.4f\n', peaksnr);
