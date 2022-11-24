clc;
clf;
clear all;
close all;

pkg load image;

% Read the image information
nature=imread('C:\CPEN111\nature.jpg');
whos nature;
imwrite(nature,'nature.png');

% grayscale
grayscale_nature = rgb2gray(nature);
whos grayscale_nature;

% Intensify image in red
nature_red=nature;
nature_red(:,:,2)=0;
nature_red(:,:,3)=0;
imwrite(nature_red,'nature_red.png');

% Intensify image in green
nature_green=nature;
nature_green(:,:,1)=0;
nature_green(:,:,3)=0;
imwrite(nature_green,'nature_green.png');

% Intensify image in blue
nature_blue=nature;
nature_blue(:,:,1)=0;
nature_blue(:,:,2)=0;
imwrite(nature_blue,'nature_blue.png');


subplot(2,2,1),imshow(nature),title('original image');%print original image.
subplot(2,2,2),imshow(nature_red),title('red  image');%print gray image.
subplot(2,2,3),imshow(nature_green),title('green image');%print gray image.
subplot(2,2,4),imshow(nature_blue),title('blue image');%print gray image.

