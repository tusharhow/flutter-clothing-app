import 'package:clothing_app/app/components/reusable_widget.dart';
import 'package:clothing_app/app/constants/app_colors.dart';
import 'package:clothing_app/app/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16 * 3),
            Center(
              child: CardWidget(
                size: Size(350, 60),
                offset: Offset(8, 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: '    Search for Products',
                    suffixIcon: Container(
                      height: double.infinity,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: CardWidget(
                  size: Size(300, 300),
                  bgColor: product.color,
                  child: Hero(
                    tag: product.id,
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  product.price,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.. ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: " Read More",
                        style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "Color",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    bgColor: Colors.green,
                    child: SizedBox(),
                  ),
                  SizedBox(width: 10),
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    bgColor: Colors.teal,
                    child: SizedBox(),
                  ),
                  SizedBox(width: 10),
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    bgColor: Colors.orangeAccent,
                    child: SizedBox(),
                  ),
                  SizedBox(width: 10),
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    bgColor: Colors.purple,
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Text(
                          "M",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Text(
                          "L",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Text(
                          "XL",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "Quantity",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  CardWidget(
                    size: Size(30, 30),
                    offset: Offset(3, 3),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "Related Products",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: CardWidget(
                      size: Size(150, 200),
                      offset: Offset(4, 4),
                      child: SizedBox(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
