class CartProduct {
  final String id;
  final String name;
  final int price;
  int quantity;

  CartProduct({required this.id, required this.name, required this.price, this.quantity = 0});
}