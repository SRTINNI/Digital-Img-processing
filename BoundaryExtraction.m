% image read
A=imread('E:\SEMESTER 4.1\LABs\mug.jpg'); 

C=rgb2gray(A); % rgb to gray 

C(C<225)=0;

s=strel('disk',4,0);%Structuring element

D=~im2bw(C);%binary Image

F=imerode(D,s);%Erode the image by structuring element


figure,imshow(A);title('Original Image');

figure,imshow(D);title('Binary Image');
%Difference between binary image and Eroded image
figure,imshow(D-F);title('Boundary extracted Image');

%Procedure:
%1.Convert the image into binary image.
%2.Perform Erosion: Erode binary image A by structuring element B. (i.e)
%   (A erode B)
%Subtraction:   Subtract the binary image A from the Eroded image.(i.e)
%   A-(A erode B)