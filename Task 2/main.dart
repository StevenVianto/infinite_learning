import 'greetings.dart';
import 'luas_persegi.dart';
import 'diskon.dart';

void main() {
  sapaUmum();
  sapaNama('Andi');

  final sisi = 5.0;
  print('Luas persegi dengan sisi $sisi = ${luasPersegi(sisi)}');

  final hasilDiskon = hitungDiskon(200000, 15);
  print('Hasil kalkulator diskon: $hasilDiskon');
}
