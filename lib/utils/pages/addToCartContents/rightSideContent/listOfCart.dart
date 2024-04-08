import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class listOfCart extends StatefulWidget {
  const listOfCart({super.key});

  @override
  State<listOfCart> createState() => _listOfCartState();
}

class _listOfCartState extends State<listOfCart> {
  int itemCount = 1;

  void increaseItem() {
    setState(() {
      itemCount++;
    });
  }

  void decreaseItem() {
    setState(() {
      if (itemCount > 1) {
        itemCount--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370,
      child: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  6,
                  (index) {
                    return Container(
                      
                      height: 110,
                      width: double.infinity,
                      
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                    "assets/images/search.png",fit: BoxFit.cover,), // Replace 'assets/your_image.png' with your image path
                              ),
                              SizedBox(width: 15,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Product Name',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Price: \$10.00',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      'Total: \$${10.00 * itemCount}',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[350]!,
                                      offset: const Offset(0,0),
                                      blurRadius: 5
                                      
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: decreaseItem,
                                    ),
                                    Text('$itemCount'),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: increaseItem,
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
