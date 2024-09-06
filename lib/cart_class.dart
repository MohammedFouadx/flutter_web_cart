
import 'cart_model.dart';

class Cart {
  final List<CartItem> items;

  Cart({this.items = const []});

  void addItem(CartItem item) {
    items.add(item);
  }

  void removeItem(String id) {
    items.removeWhere((item) => item.id == id);
  }

  void updateItemQuantity(String id, int newQuantity) {
    final item = items.firstWhere((item) => item.id == id);
    item.quantity = newQuantity;
  }

  double get totalPrice {
    return items.fold(0, (total, item) => total + item.price * item.quantity);
  }
}