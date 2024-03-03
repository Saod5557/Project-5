import 'package:flutter/material.dart';

import '../widget/catalogue_widget.dart';

class ExpressDelivery extends StatelessWidget {
  const ExpressDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 12),
        child: Column(children: [
          SizedBox(height: 22,),
               CatalogueWidget(title: "View All Express Delivery",),
               Divider(color: Color(0xffd49a83),indent: 5,),
        ],),
      ),
    );
  }
}