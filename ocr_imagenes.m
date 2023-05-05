clc
clear all
close all

img=imread("palabras.jpg");
figure(1);
imshow(img);

ocr_words = ocr(img);
ocr_words.Text
bbox = ocr_words.WordBoundingBoxes;

%Dibujando del rectangulo

hold on
for i=1:length(bbox)
    rectangle("Position",bbox(i,:),'EdgeColor','g', "LineWidth",5)

end
hold off
