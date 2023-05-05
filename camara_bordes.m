clc
clear all
close all

webcamlist();

cam = webcam(1);
%%cam.Resolucion =

while true
    img = snapshot(cam);
    img= rgb2gray(img);
    img = edge(img, "canny");

    figure(1);
    imshow(img);
end
