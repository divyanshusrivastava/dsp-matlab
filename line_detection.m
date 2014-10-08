%% Line Detection
% In Edge Detection, a pixel is attenuated, if there is a dramatic change
% in color in any direction.
% Line detection is a special kind of edge detection. For line detection,
% the direction in which a color changes is considered is restricted.


%%
% The common filter kernels are


edge = [-1 -1 -1;- 1 8 -1;-1 -1 -1]

horizontal = [-1 -1 -1;2 2 2;-1 -1 -1]

vertical = [-1 2 -1;-1 2 -1;-1 2 -1]

diagonal_1 = [-1 -1 2;-1 2 -1; 2 -1 -1]

diagonal_2 = [2 -1 -1;-1 2 -1;-1 -1 2]

%% 
building = imread('myself.jpg');
imshow(building), title('ORIGINAL IMAGE')

%%
horizontal_building = imfilter(building, horizontal);
vertical_building = imfilter(building, vertical);
diagonal_1_building = imfilter(building, diagonal_1);
diagonal_2_building = imfilter(building, diagonal_2);

%%
figure
imshow(horizontal_building), title('Horizontal edges')
figure
imshow(vertical_building), title('Vertical edges')
figure
imshow(diagonal_1_building), title('Diagonal UP edges')
figure
imshow(diagonal_2_building), title('Diagonal DOWN edges')