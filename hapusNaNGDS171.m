% Ini merupakan fungsi untuk menghapus nilai yang berisi Null/NaN pada
% dataset gene expression.
% Jullend Gatc. Fakultas Ilmu Komputer, Universitas Indonesia.

function remNaNGDS171 = hapusNaNGDS171(remNaNGDS171)
remNaNGDS171(any(isnan(remNaNGDS171),2),:) = [];