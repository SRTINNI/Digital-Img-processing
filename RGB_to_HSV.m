RGB = imread('peppers.png');
imshow(RGB)
%Convert the image to the HSV color space.
HSV = rgb2hsv(RGB);
%Process the HSV image. This example increases the saturation of the image by multiplying the S channel by a scale factor.
[h,s,v] = imsplit(HSV);
saturationFactor = 2;
s_sat = s*saturationFactor;
HSV_sat = cat(3,h,s_sat,v);
%Convert the processed HSV image back to the RGB color space. 
%Display the new RGB image. Colors in the processed image are more vibrant.
RGB_sat = hsv2rgb(HSV_sat);
imshow(RGB_sat)