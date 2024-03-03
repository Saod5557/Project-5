import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../widget/catalogue_widget.dart';

class GiftsBundles extends StatelessWidget {
  const GiftsBundles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: ListView(
          children: [
            const SizedBox(
              height: 22,
            ),
            const CatalogueWidget(
              title: "View All Gifts & Bundles",
            ),
            const SizedBox(
              height: 16,
            ),
            //Food & Beverages
            StickyHeader(
              header: Container(
                  color: Colors.white,
                  width: 400,
                  child: Text(
                    "Food & Beverages",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )),
              content: const Column(
                children: [
                  SizedBox(height: 16),
                  CatalogueWidget(
                    title: "Cakes",
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Divider(
                    color: Color(0xffd49a83),
                    indent: 5,
                  ),
                  CatalogueWidget(
                    title: "Chocolates",
                  ),
                  Divider(
                    color: Color(0xffd49a83),
                    indent: 5,
                  ),
                  CatalogueWidget(
                    title: "Arabian Sweet",
                  ),
                  Divider(
                    color: Color(0xffd49a83),
                    indent: 5,
                  ),
                  CatalogueWidget(
                    title: "Dates",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Fragrance & Beauty
            StickyHeader(
                header: Container(
                    color: Colors.white,
                    width: 400,
                    child: const Text(
                      "Fragrance & Beauty",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )),
                content: const Column(
                  children: [
                    SizedBox(height: 16),
                    CatalogueWidget(
                      title: "Perfume",
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Arabian Scents",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Skin & Body Care",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Home Sprays",
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            //Jewellery
            StickyHeader(
                header: Container(
                    color: Colors.white,
                    width: 400,
                    child: const Text(
                      "Jewellery",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )),
                content: const Column(
                  children: [
                    SizedBox(height: 16),
                    CatalogueWidget(
                      title: "Jewellery",
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Baby Jewellery",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Watches",
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            //More
            StickyHeader(
                header: Container(
                    color: Colors.white,
                    width: 400,
                    child: const Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )),
                content: const Column(
                  children: [
                    SizedBox(height: 16),
                    CatalogueWidget(
                      title: "Men's Gifting",
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Premium Gifts",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Toys",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "New Baby Reception",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Heritage",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Personalized Gifts",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Fashion",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Women's Gifting",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                    CatalogueWidget(
                      title: "Lifestyle",
                    ),
                    Divider(
                      color: Color(0xffd49a83),
                      indent: 5,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
