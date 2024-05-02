%% This is a demo to perform ZF recon
% 2024.04.16 @ fudan university
% Email: wangcy@fudan.edu.cn

clc
clear

%% add path
addpath(genpath('./GRAPPA'))
addpath(genpath('./ESPIRiT'))
addpath('./utils')

%% set info
coilInfo = 'MultiCoil/';  % singleCoil is not avalaible for PI recon
% % put your data directory here
basePath = '/DemoData/';


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

%% ZF recon
type = 1;
reconType = 0;
imgShow = 1;
% long axis cine
runRecon(basePath,mainSavePath,coilInfo,'cine_lax',type,reconType,imgShow); 
% short axis cine
runRecon(basePath,mainSavePath,coilInfo,'cine_sax',type,reconType,imgShow); 
% T1 mapping
runRecon(basePath,mainSavePath,coilInfo,'T1map',type,reconType,imgShow); 
% T2 mapping
runRecon(basePath,mainSavePath,coilInfo,'T2map',type,reconType,imgShow); 
