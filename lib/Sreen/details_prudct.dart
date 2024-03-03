import 'package:flutter/material.dart';

import '../models/floward_data.dart';

class DetailsPrudct extends StatelessWidget {
  const DetailsPrudct({Key? key, this.details, this.newdata});
  final FlowardsData? details;
  final NewFlowardsData? newdata;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const BackButton(color: Colors.black),
          actions: [
            IconButton(
                icon: const Icon(Icons.favorite_outline_rounded,
                    color: Colors.black),
                onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.ios_share_outlined, color: Colors.black),
                onPressed: () {}),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(details?.img ?? ""),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                details?.price ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              const Text("All price include tax",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                              Text(
                                details?.title ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )
                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 70,
                            width: 120,
                            child: Image.asset("images/earn.jpg",
                                fit: BoxFit.fill),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        color: const Color(0xfff5f5f3),
                        height: 72,
                        child: Row(
                          children: [
                            Image.asset(
                              "images/express.png",
                              width: 52,
                              height: 52,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 6),
                                Text("Express Delivery",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                Text(
                                    "Order now and we will deliver it in 90 mins",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16)),
                              ],
                            ),
                            const SizedBox(width: 20),
                            const SizedBox(
                                height: 30,
                                child: Text("|",
                                    style: TextStyle(
                                        color: Color(0xff056783),
                                        fontSize: 20))),
                            const SizedBox(width: 20),
                            Image.asset(
                              "images/location.png",
                              width: 42,
                              height: 42,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 6),
                                Text("No Address Hassle",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                Text("We will collect the address for you",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 2,
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      tabs: [
                        Tab(text: "Description"),
                        Tab(text: "Care Tips"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(details?.description ?? ""),
                    ),
                    SizedBox(
                      height: 20,
                    ), // Add space between the TabBar and the button

                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        height: 130,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey, 
                            width: 1, 
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "    Pay with",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Spacer(),
                                Container(
                                    height: 70,
                                    width: 230,
                                    child: Image.asset(
                                      "images/pay.jpg",
                                      fit: BoxFit.fill,
                                    ))
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              children: [
                                Text(
                                  "    Split up to 4 payments witth Tamara \n     Learn More",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13),
                                ),
                                Spacer(),
                                Container(
                                    height: 30,
                                    width: 50,
                                    child: Image.asset(
                                      "images/tamara.jpg",
                                      fit: BoxFit.fill,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: SizedBox(
                width: 360,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_shopping_cart_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Add To  Cart",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff056783),
                      shape: RoundedRectangleBorder(
                        // لجعل الزوايا مدورة
                        borderRadius: BorderRadius.circular(11.0),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
