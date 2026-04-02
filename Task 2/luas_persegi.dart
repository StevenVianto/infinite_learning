// Topik B: Kalkulator Luas Persegi

double luasPersegi(double sisi) {
  if (sisi < 0) {
    throw ArgumentError('Sisi tidak boleh negatif');
  }
  return sisi * sisi;
}
