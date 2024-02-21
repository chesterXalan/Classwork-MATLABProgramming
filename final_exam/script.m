clc; clear; close all

img = imread('cat_and_dog.jpg');
img = imresize(img, 0.5); % resize to 50% size

data = [130 256 346 392 0.95 0  % [x1, y1, y2, y2, score, class] 
        142 252 335 387 0.98 0  % x1, y1 is top-left point
        151 260 341 380 0.91 0  % x2, y2 is bottom-right point
        140 240 360 400 0.93 0  % score is confidence of detection
        345 90  700 370 0.92 1  % class is type of object
        335 85  650 365 0.94 1
        326 80  640 390 0.89 1
        340 79  680 378 0.97 1];

figure('Name', 'Before NMS Processing', ...
       'NumberTitle', 'off')
imshow(img)

hold on
for i = 1:size(data, 1) % get row number
    drawRectangle(data(i, :))
end
hold off

keep_id = NMS(data, 0.3); % NMS threshold = 0.3

figure('Name', 'After NMS Processing', ...
       'NumberTitle', 'off')
imshow(img)

hold on
for i = keep_id
    drawRectangle(data(i, :))
end
hold off
