import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../widget/catalogue_widget.dart';

class FlowersPlants extends StatelessWidget {
  const FlowersPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  const EdgeInsets.only(left: 12),
        child: ListView(
          children: [
            const SizedBox(height: 22,),
             const CatalogueWidget(title: "View All Flowers & Plants",),
             const SizedBox(height: 16,),
               //Food & Beverages
            StickyHeader(header: Container(color:Colors.white,width: 400, child: const Text("Product Type",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
           content:  const Column(children: [
            SizedBox(height: 16),
             CatalogueWidget(title: "Hand Bouquets",),
             SizedBox(height: 6,),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Flowers in Vases",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Plants",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Only Flowers",),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Flowers in Baskets and Trays",),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Preserved Flowers",),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Top Table Arrangements",),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Flowers Favors",),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Flowers Sculptures",),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Flowers Accessories",),
           ],),

          ),
            const SizedBox(height: 10,),
          //Fragrance & Beauty
          StickyHeader(header: Container(color:Colors.white,width: 400,child: const Text("Flower Type",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
           content:  const Column(children: [
            SizedBox(height: 16),
             CatalogueWidget(title: "Roses",),
             SizedBox(height: 6,),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Lilies",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Hydrangea",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Carnations",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Chrysanthemums",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Baby Roses",),
           ],)
           
           
          ),
            const SizedBox(height: 10,),
          //Jewellery
          StickyHeader(header: Container(color:Colors.white,width: 400,child: const Text("Flower Color",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
           content:  const Column(children: [
            SizedBox(height: 16),
             CatalogueWidget(title: "Red",),
             SizedBox(height: 6,),
             Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "White",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Purple",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Yellow",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Pink",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Blue",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Orange",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Peach",),
              Divider(color: Color(0xffd49a83),indent: 5,),
             CatalogueWidget(title: "Fuchsia",),
              
           ],)
           
           
          ),
            
           
          ],
            
        ),
      ),
    );
  }
}