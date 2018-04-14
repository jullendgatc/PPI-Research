% Merupaka fugsi untuk mengetahui perbedaa ekspresi berdasarkan statistik
% dimana gene expression level dari sample ScoGDS171s (Sehat) dan sample
% ScoGDS171i (terinfeksi) yang diperoleh dari hasil score PCA sebelumnya
% utuk melihat gene mana saja yang paling berubah significan berdasarkan
% perhitungan statistik.

% menggunakan uji T (T-Test) dengan permutasi sebanyak 1000 kali
% mengembalikan p-value dan t-score.
[pv171np, ts171np] = mattest(GDS171Sehat, GDS171infeksi,'Showhist', true, 'Showplot', true);

cutoff = 0.05;
JPVsignp = sum(pv171np < cutoff);

% FDR
figure;
[pFDR171np, qv171np] = mafdr(pv171np, 'showplot', true);

ReTest171np = [ts171np pv171np qv171np pFDR171np]; % concate hasil statistik test menjadi 1 matrix