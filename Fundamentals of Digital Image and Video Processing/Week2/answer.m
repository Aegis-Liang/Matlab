
function [ PSNR ] = calcpsnr( MAXI,MSE )
%This funtion calculates the PSNR value i.e. peak signal to nose ratio
PSNR=10*log10(MAXI/MSE);
end

Function to calculate mse: 
 function MSE=calcmse(n1,n2,I1,I2)
%this calculates mean square error
MSE=1/(n1*n2)*sum(sum((I1-I2).*(I1-I2)));

 The final script made goes here.Read it thoroughly, uncomment where required:  
 I1=imread('lena.gif'); %Read the image
I1=im2double(I1);%converting to double
filter1=ones(3)/9;%Create a 3x3 filter each sample having values of 1/9
filter2=ones(5)/25;%lookup ones() in matlab documentation help

I2=imfilter(I1,filter1,'replicate');%apply 3x3 filter
I3=imfilter(I1,filter2,'replicate');%apply 5x5 filter
%uncomment to show images
%figure('name','Original');imshow(I1);figure('name','3x3');imshow(I2);figure('name','5x5');imshow(I3)
MSE1=calcmse(256,256,I1,I2);
MSE2=calcmse(256,256,I1,I3);

PSNR_1=calcpsnr(1,MSE1)
PSNR_2=calcpsnr(1,MSE2)

