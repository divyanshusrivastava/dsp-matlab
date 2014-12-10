%% Experiment 13

%% Line Detection
% In Edge Detection, a pixel is attenuated, if there is a dramatic change
% in color in any direction.
% Line detection is a special kind of edge detection. For line detection,
% the direction in which a color changes is considered is restricted.


%%
% The common filter kernels are
edge = [-1 -1 -1;- 1 8 -1;-1 -1 -1];
horizontal = [-1 -1 -1;2 2 2;-1 -1 -1];
vertical = [-1 2 -1;-1 2 -1;-1 2 -1];
diagonal_1 = [-1 -1 2;-1 2 -1; 2 -1 -1];
diagonal_2 = [2 -1 -1;-1 2 -1;-1 -1 2];

%% 
building = imread('build.jpg');
imshow(building), title('ORIGINAL IMAGE')

%%
horizontal_building = imfilter(building, horizontal);
vertical_building = imfilter(building, vertical);
diagonal_1_building = imfilter(building, diagonal_1);
diagonal_2_building = imfilter(building, diagonal_2);

%%
subplot(221),imshow(horizontal_building), title('Horizontal edges')
subplot(222),imshow(vertical_building), title('Vertical edges')
subplot(223),imshow(diagonal_1_building), title('Diagonal UP edges')
subplot(224),imshow(diagonal_2_building), title('Diagonal DOWN edges')