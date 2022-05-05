% Harmonic mean filter 3x3 on salt-pepper noise and gausssian noise
% take any input image
I =imread('img1.png');
I=rgb2gray(I);
figure(1);
subplot(2,2,1);
imshow(I);
title('Original gray Image');

SI = imnoise(I,'salt & pepper');
GI = imnoise(I,'gausssian');

Kr=3;
Kc=3;

Sg=im2double(SI);
Gg=im2doule(GI);

SF=(Kr*Kc)./imfilter(1./(Sg+eps),ones(Kr,Kc),'replicate');
GF=(Kr*Kc)./imfilter(1./(Gg+eps),ones(Kr,Kc),'replicate');

figure
subplot(2,2,1)
imshow(SI)
title('original image with salt and pepper noise')
subplot(2,2,2)
imshow(SF)
title('Filtered image for salt and pepper noise')
subplot(2,2,3)
imshow(GI)
title('Image with gaussian noise')
subplot(2,2,4)
imshow(GF)
title('Filtered Image for gaussian noise')

%Calculate the PSNR.
%ref = imread('pout.tif');
%A = imnoise(ref,'salt & pepper', 0.02);
%[peaksnr, snr] = psnr(A, ref); 
%fprintf('\n The Peak-SNR value is %0.4f', peaksnr);
%The Peak-SNR value is 22.6437
%fprintf('\n The SNR value is %0.4f \n', snr);
% The SNR value is 15.5524 S

%geometric mean filter
I =imread('img1.png');
I=rgb2gray(I);
figure(1);
subplot(2,2,1);
imshow(I);
title('Original gray Image');

SI = imnoise(I,'salt & pepper');
GI = imnoise(I,'gausssian');

Kr=3;
Kc=3;

Sg=im2double(SI);
SF=exp(imfilter(log(Sg),ones(Kr,Kc),'replicate')).^(1/(Kr*Kc));
Gg=im2double(GI);
GF=exp(imfilter(log(Gg),ones(Kr,Kc),'replicate')).^(1/(Kr*Kc));

figure
subplot(2,2,1)
imshow(SI)
title('image salt-pepper noise')

subplot(2,2,2)
imshow(SF)
title('salt-pepper filtered image')

subplot(2,2,1)
imshow(GI)
title('image with gaussian noise')

subplot(2,2,2)
imshow(GF)
title('aussian filtered image')
