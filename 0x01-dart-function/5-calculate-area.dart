double calculateArea(double height, double base) {
  double area = 0.5 * height * base;
  double roundedArea = double.parse(area.toStringAsFixed(2));
  return roundedArea;
}
