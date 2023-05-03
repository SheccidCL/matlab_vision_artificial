clc
clear all
close all

%% lectura de imagen
img = imread("lav.jpg");
figure(1)
imshow(img)

%% Extracción de canales
%%Rojo
img_R = img;
img_R = img;
img_R(:,:,2)=0;
img_R(:,:,3)=0;
figure(2);
imshow(img_R)


%%Azul
img_B = img;
img_B(:,:,1)=0;
img_B(:,:,2)=0;
figure(2);  
imshow(img_B)

%%Verde
img_G = img;
img_G(:,:,1)=0;
img_G(:,:,3)=0;
figure(2);
imshow(img_G)

imshow([img_R, img_G, img_B])

%%Operaciones con imagenes
%%Morado
comb_1=img_R + img_B;
figure(3)
imshow(comb_1)

%%Dorado
comb_2=img_R + img_G;
figure(4)
imshow(comb_2)

%%Cian 
comb_3=img_G + img_B;
figure(5)
imshow(comb_3)

%%Escala de gris
img_gris =rgb2gray(img);
figure(6)
imshow(img_gris)

%%Cambio de brillo
img_brillo=img+50;
img_brillod=img-50;
figure(7)
imshow([img_brillod, img, img_brillo])

%%Combinado de imagenes
img_ef = imread('par.jpg');
[renglones, columnas, canales]=size(img);
img_ef=imresize(img_ef, [renglones, columnas]);

%%Mezclado alfa
alfa=0.2;
mezclado=alfa.*img_ef+(1-alfa).*img;
figure(8)
imshow(mezclado)









