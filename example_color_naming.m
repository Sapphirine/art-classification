clc
clear all
close all
% load the word to color names matrix. The words are a 32x32x32 grid on the sRGB space. 

load('w2c.mat');

% first example
im=double(imread('8078.jpg'));       % load test image

% compute the color name assignment for all pixels in image im:
out=im2c(im,w2c,-1);                % using im2c(im,w2c,0) is much faster

figure(1);
subplot(1,2,1);imshow(uint8(im));
subplot(1,2,2);imshow(uint8(out));

R = out(:, :, 1);
r1 = median(median(R, 1));
r2 = median(median(R, 2));
G = out(:, :, 2);
g1 = median(median(G, 1));
g2 = median(median(G, 2));
B = out(:, :, 3);
b1 = median(median(B, 1));
b2 = median(median(G, 2));
