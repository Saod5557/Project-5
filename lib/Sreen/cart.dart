import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            clipBehavior: Clip.antiAlias,
            height: 400,
            width: 360,
            child: Image.asset(
              "images/shopping.jpg",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Your Cart is Empty!",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff4a4f52)),
          ),
          const SizedBox(height: 10),
          const Text(
            "Looks like you haven't added anything to your cart yet.",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color(0xff4a4f52)),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 350,
            height: 52,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff056783),
                  shape: RoundedRectangleBorder(
                   
                    borderRadius: BorderRadius.circular(4.0),
                  )),
              child: const Text(
                "Start Shopping",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      )),
    );
  }
}
