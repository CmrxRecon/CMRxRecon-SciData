function runRecon(mainDataPath,savePath,filetype,type,reconType,imgShow)

%% run for different Acc factors
FileList = dir(mainDataPath);
NumFile = length(FileList);
k = 0;
% running for all patients
for ind1 = 1:NumFile
    if isequal(FileList(ind1).name(1),'.')
        k = k+1;
        continue;
    end
    disp(['Progress start for subject ',num2str(ind1-k)]);
    try
        file_name = FileList(ind1).name;
        dataPath = strcat(mainDataPath,file_name,'/',filetype,'_ks.mat');
        % load raw kspace data
        load(dataPath); 
        kspace = Recon_ks;
        calibPath = strcat(mainDataPath,file_name,'/',filetype,'_calib.mat');
        % load calibration data
        load(calibPath);         
        % to reduce the computing burden and space, we only evaluate the central 2 slices
        % For cine: we evaluate the first 3 time frames
        % For mapping: we evaluate all the weightings
        [sx,sy,~,sz,t] = size(kspace);
        if strcmp(filetype,'cine_lax') || strcmp(filetype,'cine_sax')
            if sz < 3
                reconImg = ChallengeRecon(kspace(:,:,:,:,1:3), Calib(:,:,:,:,1:3), type, reconType, imgShow);
            else
                reconImg = ChallengeRecon(kspace(:,:,:,round(sz/2)-1:round(sz/2),1:3), Calib(:,:,:,round(sz/2)-1:round(sz/2),1:3), type, reconType, imgShow);
            end
        else
            reconImg = ChallengeRecon(kspace(:,:,:,round(sz/2)-1:round(sz/2),:), Calib(:,:,:,round(sz/2)-1:round(sz/2),:), type, reconType, imgShow);
        end

        % mkdir for saving
        if exist(strcat(savePath,'/',file_name), 'dir') ~= 7
            mkdir(strcat(savePath,'/',file_name));
        end
        save(strcat(savePath,'/',file_name,'/',filetype,'.mat'),'reconImg');        
        disp(strcat(file_name," reconstructed successfully!"));
    catch
        disp(strcat(char(dataPath)," missing!"));
    end
end
