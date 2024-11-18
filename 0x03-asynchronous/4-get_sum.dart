import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map user = jsonDecode(userData);
    String userId = user['id'];

    String userOrders = await fetchUserOrders(userId);
    List orders = jsonDecode(userOrders);

    double total = 0;
    for (var product in orders) {
      String productPrice = await fetchProductPrice(product);
      total += jsonDecode(productPrice);
    }

    return total;
  } catch (error) {
    return -1;
  } 
}
