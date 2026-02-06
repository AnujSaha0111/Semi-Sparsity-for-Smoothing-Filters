clc;
clear;
close all;

% loading images
I    = im2double(imread('strip_noise.png'));
L0   = im2double(imread('output/strip_l0_gradient_res.png'));
Semi = im2double(imread('output/strip_semi_sparsity_res.png'));

% ensuring all images are same size
I    = imresize(I,   [size(L0,1), size(L0,2)]);
Semi = imresize(Semi,[size(L0,1), size(L0,2)]);

% gapping
gap = 10;                      % pixels
white_gap = ones(size(I,1), gap, size(I,3));

% comparison
comparison = [I white_gap L0 white_gap Semi];

% display result of comparison
figure;
imshow(comparison);
title('Noisy Input   |   L0 Gradient (Staircase)   |   Semi-Sparsity (Smooth)');

% saving comparison output
imwrite(comparison, 'output/comparison_l0_vs_semi.png');