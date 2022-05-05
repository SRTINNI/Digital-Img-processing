I = imread('peppers.png') ;
I1 = I+50 ;
figure(1) ; imshow(I) ;
figure(2) ; imshow(I1) ;

%or
pout = imread('pout.tif');
pout_imadjust = imadjust(pout);
pout_histeq = histeq(pout);
pout_adapthisteq = adapthisteq(pout);

%montage({pout,pout_imadjust,pout_histeq,pout_adapthisteq},'Size',[1 4])
%title('Original Image and Enhanced Images using imadjust, histeq, and adapthisteq')

tire = imread('tire.tif');
tire_imadjust = imadjust(tire);
tire_histeq = histeq(tire);
tire_adapthisteq = adapthisteq(tire);
%montage({tire,tire_imadjust,tire_histeq,tire_adapthisteq},'Size',[1 4])
%title('Original Image and Enhanced Images using ' + ...
   % 'imadjust, histeq, and adapthisteq')
figure
subplot(1,2,1)
imhist(pout)
title('Histogram of pout.tif')
subplot(1,2,2)
imhist(tire)
title('Histogram of tire.tif');