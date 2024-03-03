import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../widget/catalogue_widget.dart';

class Occasions extends StatelessWidget {
  const Occasions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  const EdgeInsets.only(left: 12),
        child: ListView(
          children: [
            const SizedBox(height: 22,),
             const CatalogueWidget(title: "View All Occasions",),
             const SizedBox(height: 16,),
               //Food & Beverages
            StickyHeader(header: Container(color:Colors.white,width: 400, child: Text("Everyday Occasions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
           content:  const Column(children: [
            SizedBox(height: 16),
             CatalogueWidget(title: "Birthday",),
             SizedBox(height: 6,),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Anniversary",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "New Baby Born",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Wedding Congratulation",),
               Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Graduation",),
           ],),

          ),
            SizedBox(height: 10,),
          //Fragrance & Beauty
          StickyHeader(header: Container(color:Colors.white,width: 400,child: const Text("Emotions and Sentiments",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
           content:  const Column(children: [
            SizedBox(height: 16),
             CatalogueWidget(title: "I Love You",),
             SizedBox(height: 6,),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Get Well Soon",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Thank You",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Congratulation",),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Just Because",),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Sympathy",),
             Divider(color: Color(0xffd49a83),indent: 5,),
           ],)
           
           
          ),
            
              
           
          ],
            
        ),
      ),
    );
  }
}