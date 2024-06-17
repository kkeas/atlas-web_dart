List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = temperaturesInC.map((celsius) {
    double fahrenheit = (celsius * 9 / 5) + 32;
    return double.parse(fahrenheit.toStringAsFixed(2));
  }).toList();

  return temperaturesInF;
}
