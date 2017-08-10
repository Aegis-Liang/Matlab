function [ result ] = MSE( filter_size )
%MSE Summary of this function goes here
%   Detailed explanation goes here
image_origin = imread('digital_images_week2_quizzes_lena.gif');
image_double = im2double(image_origin);
filter_low_pass = (1/(filter_size^2)).*ones(filter_size);
image_low_pass_filter = imfilter(image_double, filter_low_pass, 'replicate');
result = sum(sum((image_double - image_low_pass_filter).^2)) ./ ( size(image_origin, 1) *  size(image_origin, 2));
end
