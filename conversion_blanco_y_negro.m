clc
clear all
close all

img = imread("monedas.jpg");
figure(1);
imshow(img);

img_gris = rgb2gray(img);
figure(2);
imshow(img_gris);


umbral=0.9;

img_bn = im2bw(img_gris, umbral);
figure(3);
imshow(img_bn);

img_bn = not (img_bn);
figure(4);
imshow(img_bn);

mascara = uint8(img_bn);

objetos = img.*mascara;
figure(5);
imshow(objetos);

