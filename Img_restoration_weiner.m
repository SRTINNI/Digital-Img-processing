  
%parameter T (observation time) and motion rate
T=1; ax=30; ay=40; NSR=0; %since no noise
 
%reading the blurred picture
I=im2double(imread('blur.bmp'));
 
%generating frequencies for the blurring model
u=linspace(-0.5,0.5,size(I,2));
v=linspace(-0.5,0.5,size(I,1));
 
[U,V]=meshgrid(u,v);
H=(T./(pi*(U*ax+V*ay))).*sin(pi*(U*ax+V*ay)).*exp(-1i*pi*(U*ax+V*ay));
 
I_f=fft2(I);
I_motion_fn=fftshift(I_f);
 
wiener=(1./H).*((H.^2)./((H.^2)+NSR));
 
I_recon_fn=I_motion_fn.*wiener;
I_recon=ifft2(ifftshift(I_recon_fn));
 
figure(1);
subplot(1,2,1), imagesc(I), colormap(gray)
title('original image')
 
subplot(1,2,2),imagesc(abs(I_recon))
title('reconstruction using wiener')