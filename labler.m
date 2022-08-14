url = "https://drive.google.com/drive/u/0/folders/1l_Rn1A6UfFxoVVCll_hkVhEKhqivUpSY/logo.zip";
downloadFolder = tempdir;
filename = fullfile(downloadFolder,"logo.zip");

dataFolderTrain = fullfile(downloadFolder,"images_background");
if ~exist(dataFolderTrain,"dir")
    disp("Downloading Omniglot training data (4.5 MB)...")
    websave(filename,url);
    unzip(filename,downloadFolder);
end
disp("Training data downloaded.")