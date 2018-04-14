% preprossnttest merupakan fungsi dimana proses baca data, normalisasi data
% yang meliputi proses replace missing value menggunakan KNN pada data gene
% expression GDS171(deskripsi data dapat dilihat di LOG THESIS) yang
% diambil dari Gene Expression Omnimbus.
% =========================================================================
bacadataGDS171 = geosoftread('GDS171.soft');                               
% =========================================================================
% =========================================================================
% KNN dan Hapus Baris NaN
% =========================================================================
remNaNGDS171 = knnimpute(bacadataGDS171.Data);                             % Replace missing value menggunakan KNN
% =========================================================================
% Normalisasi LOG2 (standarisasi normalisasi microarray)
% =========================================================================
NormGDS171 = quantilenorm(remNaNGDS171);                            

GDS171normlog2 = log2(NormGDS171);
cleanGDS171 = hapusNaNGDS171(GDS171normlog2);                          % Hapus data kosong (NaN atau Inf) ==> hapus per row

% =========================================================================
% Pisahkan Sample Gene Positif dan negatif Infected
% =========================================================================
GDS171Sehat = [cleanGDS171(:,1) cleanGDS171(:,2) cleanGDS171(:,3) cleanGDS171(:,4) cleanGDS171(:,5) cleanGDS171(:,6) cleanGDS171(:,7) cleanGDS171(:,8) cleanGDS171(:,9) cleanGDS171(:,10) cleanGDS171(:,11) cleanGDS171(:,12) cleanGDS171(:,13) cleanGDS171(:,14) cleanGDS171(:,15)];
GDS171infeksi = [cleanGDS171(:,16) cleanGDS171(:,17) cleanGDS171(:,18) cleanGDS171(:,19) cleanGDS171(:,20) cleanGDS171(:,21) cleanGDS171(:,22) cleanGDS171(:,23) cleanGDS171(:,24) cleanGDS171(:,25) cleanGDS171(:,26) cleanGDS171(:,27) cleanGDS171(:,28) cleanGDS171(:,29) cleanGDS171(:,30)];
% =========================================================================
% READ dan WRITE
% =========================================================================
% Ubah data ke bentuk XLS setelah normalisasi dan hapus missing value
% GDS171xls = xlswrite('GDS171 Normalisasi',cleanGDS171);                    
