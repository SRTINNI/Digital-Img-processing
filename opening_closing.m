% Importing the image
I = imread('cameraman.tif');
subplot(2, 3, 1),
imshow(I);
title('Original image');

% Dilated Image
se = strel('line', 7, 7);
dilate = imdilate(I, se);
subplot(2, 3, 2),
imshow(dilate);
title('Dilated image');

% Eroded image
erode = imerode(I, se);
subplot(2, 3, 3),
imshow(erode);
title('Eroded image');

% Opened image
open = imopen(I, se);
subplot(2, 3, 4),
imshow(open);
title('Opened image');

% Closed image
close = imclose(I, se);
subplot(2, 3, 5),
imshow(close);
title('Closed image');

%Dilation: Dilation adds pixels on the object boundaries.
%Erosion: Erosion removes pixels on object boundaries.
%Open: The opening operation erodes an image and then dilates the eroded image,
%using the same structuring element for both operations.
%Close: The closing operation dilates an image and then erodes 
%the dilated image, using the same structuring element for both operations.