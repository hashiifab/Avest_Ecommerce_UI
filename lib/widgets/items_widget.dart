import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});

  // List of product details
  List<String> myProductName = [
    'Samsung Galaxy S21',
    'Life Buoy 330',
    'Baby Bed',
    'Trouser',
  ];

  List<String> myProductDesc = [
    'Samsung Galaxy S21 is a stylish and modern phone.',
    'Life Buoy 330 is an eco-friendly product.',
    'Baby Bed is made of durable material.',
    'Trouser is made of comfortable material.',
  ];

  List<String> myProductPrice = [
    '\$1000',
    '\$10',
    '\$200',
    '\$50',
  ];

  List<String> myProductDiscount = [
    '50%',
    '20%',
    '10%',
    '30%',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.72,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < myProductName.length; i++)
          InkWell(
            onTap: () {
              // Navigate to the detailed product page
              Navigator.pushNamed(context,
                  'itemsPage', // Define the route for your detail page in your routes
                  arguments: {
                    'productName': myProductName[i],
                    'productDesc': myProductDesc[i],
                    'productPrice': myProductPrice[i],
                    'productDiscount': myProductDiscount[i],
                    'productImage': 'images/${i + 1}.jpg',
                  });
            },
            child: Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 14),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color(0xFF001F3F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          myProductDiscount[i],
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.favorite_outline,
                        color: Colors.red,
                        size: 20,
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      'images/${i + 1}.jpg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      myProductName[i],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      myProductDesc[i],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          myProductPrice[i],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        const Icon(
                          Icons.shopping_cart,
                          color: Color(0xFF001F3F),
                          size: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
