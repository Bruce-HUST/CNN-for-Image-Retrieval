clear all; close all; clc;
addpath('tools');

db_name = 'faceDataset'; % 'CALTECH256' as a option
numRetrieval = 20;

% load dataset
if strcmp(db_name, 'faceDataset')
    load feat4096Norml.mat;
    path_imgDB = './faceDataset/';
    addpath(path_imgDB);
    queryID = 1900;
elseif strcmp(db_name, '256_ObjectCategories')
    load 256feat2048Norml.mat; % 0.495471
    % load 256feat4096Norml.mat % 0.484413
    path_imgDB = './256_ObjectCategories/';
    addpath(path_imgDB);
    %example
    % queryID = 310; %
end

%if not normalize, then do
% featNorm = normalize1(feat);
% save('256featNorm.mat','featNorm', 'rgbImgList');

% [pc, ~] = eigs(double(cov(feat)), 128);
% feat = feat*pc;

%virsulazation
retrieval_virsulazation( queryID, numRetrieval, feat_norm, imgNamList);
