
% This is for Power-Law Transform 

 clear all
 close all
%for gamma value less than 1 we get Bright image
%for gamma value greater than 1 we get Dark image

% Importing image in Workspace
RGB=imread('mug.jpg');

% RGB to gray
I=rgb2gray(RGB);
% In double format
I=im2double(I);

% computing size m,n 
[m n] = size(I);

% Computing s = c * (r ^ gamma) where r and gamma are positive constants 
c = 2;
g =[0.5 0.7 0.9 1 2 3 4 5 6];% Gamma Correction Array
for r=1:length(g)
for p = 1 : m
    for q = 1 : n
        I3(p, q) = c * I(p, q).^ g(r);  
    end
end
figure, imshow(I3);title('Power-law transformation');xlabel('Gamma='),xlabel(g(r));
end

%log transform
a1 = imread('mug.jpg'); % Read the image
a = double(a1)/255; % Normalized Image
c = 2; % Constant
f = c*log(1 + (a)); % Log Transform
subplot(1,2,1),imshow(a1),title('Original Image');
subplot(1,2,2),imshow((f)),title('Log Transformation Image');

%inverse log
figure;
L = 256;
I = imread('cameraman.tif');
log_I = uint8(log(double(I)+1) .* ((L - 1)/log(L)));% log transform
exp_I = uint8((exp(double(I)) .^ (log(L) / (L-1))) - 1);%inverse log
subplot(2, 2, [1 2]); imshow(I); title('Input');
subplot(2, 2, 3); imshow(log_I); title('\itlog(I)');
subplot(2, 2, 4); imshow(exp_I); title('\itexp(I)');