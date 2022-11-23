close all;
clear all;
clc

pkg load image;


% Read the image information
Orig_Img = imread('fruits.png');
subplot(231);
imshow(Orig_Img);
title('Original Image')


Orig_Img1 = imresize(imresize(Orig_Img,1/32),32);
subplot(232);
imshow(Orig_Img1);
title('32x32 Resolution');
imwrite(Orig_Img1,'fruits2.png');

% Change the colore image to HSV
chg_color = rgb2hsv(Orig_Img);
subplot(233)
imshow(chg_color);
% Display converted version (HSV)
title('RGB to HSV');
imwrite(chg_color,'fruits3.png');



