clc
clear all
close all

img =imread("monedas.jpg");
img = rgb2gray(img);
figure(1);
imshow(img);

borde =edge (img, "canny", 0.1);

figure(2)
imshow(borde);
