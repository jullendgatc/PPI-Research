% Principle Component Analysis GDS171
% ========================================================================= 
% Principal component analysis ==>> ekstrak data microarray. 
% protein dengan
% =========================================================================
% CoeGDS171 adalah koefisien eigen value berisi matrix 30x30
% ScoGDS171 skor data yang baru
% LatGDS171 eigen vektor
[CoeGDS171s,ScoGDS171s,LatGDS171s] = princomp(Sehat);                   
[CoeGDS171i,ScoGDS171i,LatGDS171i] = princomp(Infeksi);

% plot LatGDS171s untuh melihat fitur yang konstan dari 15 sampel gene sehat
figure
scatter(1:15,LatGDS171s);                                                   
xlabel('Komponen GDS171 Sehat')
ylabel('Eigen Value')
cumGDS171s = cumsum((LatGDS171s)./sum(LatGDS171s)*100);

% Cetak Distribusi Komponen Sehat
figure
for cSehat = 1:15
    subplot(3,5,cSehat);
    histfit(ScoGDS171s(:,1:15==cSehat));
    axis tight
end
suptitle('Distribusi Component Sehat 1 - 15');

figure
 scatter(ScoGDS171s(:,1), ScoGDS171s(:,2))
 xlabel('Komponen 1 GDS171 Sehat')
 ylabel('Komponen 2 GDS171 Sehat')

%==========================================================================

% plot LatGDS171s untuh melihat fitur yang konstan dari 15 sampel gene
% terinfeksi
figure
scatter(1:15,LatGDS171i);                                                   
xlabel('Komponen GDS171 Terinfeksi')
ylabel('Eigen Value')
cumGDS171i = cumsum((LatGDS171i)./sum(LatGDS171i)*100);

% Cetak Distribusi Komponen Sehat
figure
for cInfeksi = 1:15
    subplot(3,5,cInfeksi);
    histfit(ScoGDS171i(:,1:15==cInfeksi));
    axis tight
end
suptitle('Distribusi Component Terinfeksi 1 - 15');

figure
 scatter(ScoGDS171i(:,1), ScoGDS171i(:,2))
 xlabel('Komponen 1 GDS171 Terinfeksi')
 ylabel('Komponen 2 GDS171 Terinfeksi')

% =========================================================================
% Plot Perubahan Ekspresi
% =========================================================================
% plot korelasi antara perubahan expression pada eksresi sehat dan
% terinfeksi setelah dilakukan PCA pada fitur 1 (pertama) dilihat
% berdasarkan latensi dengan X adalah fitur Sehat dan Y adalah fitur
% Terinfeksi
% figure
% scatter(ScoGDS171s(:,1), ScoGDS171i(:,1))
% xlabel('Data GDS171 Sehat')
% ylabel('Data GDS171 Terinfeksi')

% fungsi untuk menampilkan nama objek pada scatter plot
% gname(GeneGDS171);
% =========================================================================
% =========================================================================
% Time Series PLOT PCA GDS171s
% =========================================================================
% PCA GDS171s
%Cs1 = timeseries(CoeGDS171s(:,1),1:15);
%Cs1.Name = 'Eigen Value';
%Cs1.TimeInfo.Units = 'Waktu (0, 12, 24,48, 72 Jam)';
%figure, plot(Cs1,'-o'), grid on

%Cs2 = timeseries(CoeGDS171s(:,2),1:15);
%Cs2.Name = 'Eigen Value';
%Cs2.TimeInfo.Units = 'Waktu (0, 12, 24,48, 72 Jam)';
%figure, plot(Cs2,'-o'), grid on

%Cs3 = timeseries(CoeGDS171s(:,3),1:15);
%Cs3.Name = 'Eigen Value';
%Cs3.TimeInfo.Units = 'Waktu (0, 12, 24,48, 72 Jam)';
%figure, plot(Cs3,'-o'), grid on

%Cs4 = timeseries(CoeGDS171s(:,4),1:15);
%Cs4.Name = 'Eigen Value';
%Cs4.TimeInfo.Units = 'Waktu (0, 12, 24,48, 72 Jam)';
%figure, plot(Cs4,'-o'), grid on

%Cs5 = timeseries(CoeGDS171s(:,5),1:15);
%Cs5.Name = 'Eigen Value';
%Cs5.TimeInfo.Units = 'Waktu (0, 12, 24,48, 72 Jam)';
%figure, plot(CoeGDS171s(:,5),1:15,'-o'), grid on
