clc
clear all
close all

img = imread("le.jpg");
%img =imnoise(img,"gaussian");


figure(1);
imshow(img);

k_1 = fspecial("average", [3,3]); %%ernel
k_2 = fspecial("gaussian", [5,5]); %%ernel
k_3= [0 -1 0; -1 5 -1; 0 -1 0];
k_4= [-1 -1 -1; -1 9 -1; -1 -1 -1];


%%Convolucion

img_dif = imfilter(img, k_1);
figure(2);
imshow(img_dif);

img_dif2 = imfilter(img, k_2);
figure(3);
imshow(img_dif2);

img_dif3 = imfilter(img, k_3);
figure(4);
imshow(img_dif3);

img_dif4 = imfilter(img, k_4);
figure(5);
imshow(img_dif4);


