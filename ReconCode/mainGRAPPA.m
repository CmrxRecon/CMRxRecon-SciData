%% demo for GRAPPA recon
% "CMRxRecon300" Dataset 2023 
% The kspace dimension is assumed to be like this: 
% kspace: complex images with the dimensions (sx,sy,sc,sz,t/w)
% -sx: matrix size in x-axis
% -sy: matrix size in y-axis
% -sc: coil array number
% -sz: slice number (short axis view); slice group (long axis view)
% -t/w: time frame/weighting

% 2023.03.06 @ fudan university
% Email: wangcy@fudan.edu.cn

clc
clear

%% add path
addpath(genpath('./GRAPPA'))
addpath(genpath('./ESPIRiT'))
addpath('./utils')

%% set info
% coilInfo = 'MultiCoil/';  % singleCoil is not avalaible for PI recon
% setName = 'ValidationSet/'; % options: 'TrainingSet/', 'ValidationSet/', 'TestSet/'
% AFtype = {'AccFactor04','AccFactor08','AccFactor10'};
% AFname = {'kspace_sub04','kspace_sub08','kspace_sub10'};
% personal computer
basePath = '../DemoData/';
mainSavePath = '../GRAPPA/';
% % put your data directory here


%% parameter meaning
% type = 0 means full kspace data
% type = 1 means subsampled data

% reconType = 0: perform zero-filling recon
% reconType = 1: perform GRAPPA recon
% reconType = 2: perform SENSE recon
% reconType = 3: perform both GRAPPA and SENSE recon

% imgShow = 0: ignore image imshow
% imgShow = 1: image imshow

% filetype: 'cine_lax', 'cine_sax', 'T1map', 'T2map'

%% GRAPPA recon
type = 1;
reconType = 1;
imgShow = 1;
% long axis cine
runRecon(basePath,mainSavePath,'cine_lax',type,reconType,imgShow); 
% short axis cine
runRecon(basePath,mainSavePath,'cine_sax',type,reconType,imgShow); 
% T1 mapping
runRecon(basePath,mainSavePath,'t1map',type,reconType,imgShow); 
% T2 mapping
runRecon(basePath,mainSavePath,'t2map',type,reconType,imgShow); 
