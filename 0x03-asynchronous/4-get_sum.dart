// 4-get_sum.dart

import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    // Fetch data
    String userDataJson = await fetchUserData();
    Map<String, dynamic> userData = json.decode(userDataJson);
    String userId = userData['id'];

    // Fetch orders
    String ordersJson = await fetchUserOrders(userId);
    List<dynamic> orders = json.decode(ordersJson);

    double total = 0;

    // Calculate total price
    for (String product in orders) {
      String priceJson = await fetchProductPrice(product);
      num price = json.decode(priceJson);
      total += price;
    }

    return total;
  } catch (error) {
    print('Error occurred: $error');
    return -1;
  }
}
