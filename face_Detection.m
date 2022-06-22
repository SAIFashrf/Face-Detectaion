%Detect objects using Viola-jones Algorithm
%Detect Face
FDetect = vision.CascadeObjectDetector;

%Read the input image
Image = imread('k.jpg');
subplot(1,2,1),imshow(Image);

%Returns Bounding Box values based on number of objects
BB = step(FDetect,Image);

subplot(1,2,2),imshow(Image);
hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',3,'LineStyle','-','EdgeColor','r');
end
title('face Detection');
hold off;
