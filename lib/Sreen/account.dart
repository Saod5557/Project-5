import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Profile",
          style: TextStyle(fontSize: 17),
        )),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(150),
              ),
              clipBehavior: Clip.antiAlias,
              height: 120,
              width: 120,
              child: Image.asset(
                "images/profilee.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 5),
            //Sign in Button
            SizedBox(
              width: 200,
              height: 33,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sign in or Signup",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff056783),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    )),
              ),
            ),
            SizedBox(height: 19),

            Container(
              color: Color(0xfff8f8f8),
              width: 350,
              height: 90,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("images/head.jpg", width: 24, height: 24),
                        Text("  Customer Care"),
                        Spacer(),
                        Icon(
                          (Icons.arrow_forward_ios),
                          color: Color(0xffc3c3c3),
                          size: 17,
                        )
                      ],
                    ),
                    Divider(indent: 10, endIndent: 10),
                    Row(
                      children: [
                        Image.asset("images/e.jpg", width: 25, height: 27),
                        Text("  العربية"),
                        Spacer(),
                        Icon(
                          (Icons.arrow_forward_ios),
                          color: Color(0xffc3c3c3),
                          size: 17,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),
            Container(
              color: Color(0xfff8f8f8),
              width: 350,
              height: 130,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("images/hands.jpg", width: 24, height: 24),
                        Text("  Social Responsibility"),
                        Spacer(),
                        Icon(
                          (Icons.arrow_forward_ios),
                          color: Color(0xffc3c3c3),
                          size: 17,
                        )
                      ],
                    ),
                    Divider(indent: 10, endIndent: 10),
                    Row(
                      children: [
                        Image.asset("images/quction.jpg",
                            width: 24, height: 24),
                        Text("  FAQ"),
                        Spacer(),
                        Icon(
                          (Icons.arrow_forward_ios),
                          color: Color(0xffc3c3c3),
                          size: 17,
                        )
                      ],
                    ),
                    Divider(indent: 10, endIndent: 10),
                    Row(
                      children: [
                        Image.asset("images/menu.jpg", width: 24, height: 24),
                        Text("  Terms & Conditions"),
                        Spacer(),
                        Icon(
                          (Icons.arrow_forward_ios),
                          color: Color(0xffc3c3c3),
                          size: 17,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
