import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItemsExamples extends StatelessWidget {
  CartItemsExamples({super.key});

  List<String> myProductName = [
    'T-Shirt',
    'Hoodie',
    'Cap',
    'Trouser',
  ];

  List<String> myProductPrice = [
    '\$1000',
    '\$10',
    '\$200',
    '\$50',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < myProductName.length; i++)
          Container(
            height: 120,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Radio(
                    value: "",
                    groupValue: "",
                    activeColor: const Color(0xFF001F3F),
                    onChanged: (index) {}),
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(right: 15),
                  child: Image.asset('images/${i + 1}.jpg'),
                ),
                Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          myProductName[i],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF001F3F),
                          ),
                        ),
                        Text(
                          myProductPrice[i],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        )
                      ],
                    )),
                const Spacer(),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.delete,
                          size: 25,
                          color: Color.fromARGB(255, 190, 84, 84),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 249, 254, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 0.1,
                                      blurRadius: 7,
                                    ),
                                  ]),
                              child: const Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 18,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: const Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 249, 254, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 0.1,
                                      blurRadius: 7,
                                    ),
                                  ]),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 18,
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ),
      ],
    );
  }
}
