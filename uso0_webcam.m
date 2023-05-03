clear all
close all
clc

webcamlist()

cam=webcam(1);
img_b= imread("par.jpg");
img_b=imresize(img_b,[480, 640]);
alfa=0.5;

while true

img = snapshot(cam);
mezclado=alfa*img_b+(1-alfa)*img;
figure(1)
imshow(mezclado)

end