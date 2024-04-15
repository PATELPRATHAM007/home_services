import 'package:flutter/material.dart';
import 'package:home_services/utils/models/product.dart';


class ProductListItem extends StatefulWidget {
  final CartProduct product;

  ProductListItem({required this.product});

  @override
  _ProductListItemState createState() => _ProductListItemState();
}

class _ProductListItemState extends State<ProductListItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.product.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${widget.product.id}'),
            Text('Price: \$${widget.product.price}'),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  if (widget.product.quantity > 0) {
                    widget.product.quantity--;
                  }
                });
              },
            ),
            Text('${widget.product.quantity}'),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  widget.product.quantity++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
