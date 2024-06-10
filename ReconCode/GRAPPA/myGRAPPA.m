function [reskGRAPPA,resGRAPPA] = myGRAPPA(DATAc,calib,isDisplay)
disp('myGRAPPA')
if nargin < 3
    isDisplay = 0;
end
kernalSize = [5,5];
%kernalSize = [5,4];%data{1, 2}.hdr.Config.GrappaKernelSizeKx=5,Ky=4
disp('Performing GRAPPA reconstruction ')
tic; reskGRAPPA = GRAPPA(DATAc,calib,kernalSize,0.01);toc
resGRAPPA = ifft2c(reskGRAPPA);

return