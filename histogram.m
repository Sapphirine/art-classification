%Leying Hu
%Big Data 2018

clc
clear all
close all

img = imread('8078.jpg');
img = rgb2gray(img);
[m,n] = size(img);

% Perform histogram
h = zeros(256, 1);
for k = 0:255
    h(k+1) = sum(sum(img == k));
end
figure; bar(h); title('Image Histogram')
