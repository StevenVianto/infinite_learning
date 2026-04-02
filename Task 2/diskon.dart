// Topik C: Kalkulator Diskon

Map<String, double> hitungDiskon(double hargaAsli, double persenDiskon) {
  if (hargaAsli < 0) {
    throw ArgumentError('Harga asli tidak boleh negatif');
  }
  if (persenDiskon < 0 || persenDiskon > 100) {
    throw ArgumentError('Persen diskon harus di antara 0 dan 100');
  }

  final nilaiDiskon = hargaAsli * (persenDiskon / 100);
  final hargaSetelahDiskon = hargaAsli - nilaiDiskon;

  return {
    'harga_asli': hargaAsli,
    'persen_diskon': persenDiskon,
    'nilai_diskon': double.parse(nilaiDiskon.toStringAsFixed(2)),
    'harga_setelah_diskon': double.parse(hargaSetelahDiskon.toStringAsFixed(2)),
  };
}
