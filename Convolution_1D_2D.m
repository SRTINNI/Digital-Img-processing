%In applications such as image processing, it can be useful to compare the input of a convolution directly to the output.
%The conv2 function allows you to control the size of the output.
%Compute the full convolution of A and B, which is a 6-by-6 matrix.
%C = conv2(A,B) returns the two-dimensional convolution of matrices A and B.

%A = rand(3);
%B = rand(4);
%Cfull = conv2(A,B)

%The Sobel edge-finding operation uses a 2-D convolution to detect edges in images and other 2-D data.
%Create and plot a 2-D pedestal with interior height equal to one.

A = zeros(10);
A(3:7,3:7) = ones(5);
mesh(A)