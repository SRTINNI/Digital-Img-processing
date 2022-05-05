% adding two image
X = uint8([ 255 0 75; 44 225 100]);
Y = uint8([ 50 50 50; 50 50 50 ]);
Z = imadd(X,Y)

% or adding two img
I = imread('rice.png');
J = imread('cameraman.tif');
K = imadd(I,J,'uint16');
figure
imshow(K,[])

%Add a Constant to an Image
I = imread('rice.png');
J = imadd(I,50);
figure
imshow(I)

%Display Absolute Difference between Filtered image and Original
%Z = imabsdiff(X,Y) subtracts each element in array Y from the 
%corresponding element in array X and returns the absolute difference in the corresponding element of the output array Z.
I = imread('cameraman.tif');%Read image into workspace.
J = uint8(filter2(fspecial('gaussian'), I)); %Filter the image.
K = imabsdiff(I,J);%Calculate the absolute difference of the two images.
figure
imshow(K,[])%Display the absolute difference image.

%Create the Complement of a uint8 Array
%J = imcomplement(I) computes the complement of the image I and returns the result in J.
X = uint8([ 255 10 75; 44 225 100]);
X2 = imcomplement(X)
%Reverse Black and White in a Binary Image
bw = imread('text.png');
bw2 = imcomplement(bw);
figure
imshowpair(bw,bw2,'montage')

%Create the Complement of an Intensity Image
I = imread('cameraman.tif');
J = imcomplement(I);
figure
imshowpair(I,J,'montage')

%Create the Complement of a Color Image
%Each color channel of the resulting image is the complement 
%of the corresponding color channel in the original image.
% Regions that were dark, such as dirt, become light. In the original image,
% the leaves appear green, and petals appear yellow because of a mixture of
% red and green signals. In the complement image, the leaves appear purple 
%because the red and blue signals are larger than the green signal. 
%The flower petals appear blue because the blue signal is larger than the red and green channels.

rgb = imread('yellowlily.jpg');
figure
imshow(rgb)
c = imcomplement(rgb);
figure
imshow(c)

%Divide Two uint8 Arrays
%Divide one image into another or divide image by constant
%Z = imdivide(X,Y) divides each element in the array X by 
%the corresponding element in array Y and returns the result in the corresponding element of the output array Z.
X = uint8([ 255 0 75; 44 225 100]);
Y = uint8([ 50 50 50; 50 50 50 ]);
Z = imdivide(X,Y)
W = imdivide(Y,X)

%Divide Image Background
I = imread('rice.png');
J = imdivide(I,2);%Divide each value of the image by a constant factor of 2.
imshow(I)
figure
imshow(J)

%Multiply two images or multiply image by constant
%Z = immultiply(X,Y) multiplies each element in array X by the 
%corresponding element in array Y and returns the product in the corresponding element of the output array Z.
%Multiply an Image by Itself
I = imread('moon.tif');
I16 = uint16(I);
J = immultiply(I16,I16);
imshow(I)
figure
imshow(J)
%Scale an Image by a Constant Factor
I = imread('moon.tif');
J = immultiply(I,0.5);
imshow(I)
figure
imshow(J)

%Subtract one image from another or subtract constant from image
%Z = imsubtract(X,Y) subtracts each element in array Y from the corresponding
% element in array X and returns the difference in the corresponding element of the output array Z.
%Subtract Two uint8 Arrays
I = imread('rice.png');
background = imopen(I,strel('disk',15));%Estimate the background.
J = imsubtract(I,background);%Subtract the background from the image.
imshow(I)
figure
imshow(J)
%Subtract a Constant from an Image
I = imread('rice.png');
J = imsubtract(I,50);
imshow(I)
figure
imshow(J)

