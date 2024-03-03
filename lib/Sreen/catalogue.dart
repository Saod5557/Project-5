import 'package:flutter/material.dart';

import '../tab_bar_screen/express_delivery.dart';
import '../tab_bar_screen/flowers_plants.dart';
import '../tab_bar_screen/gifts_bundles.dart';
import '../tab_bar_screen/occasions.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.white,
             bottom: PreferredSize(
          preferredSize: const Size.fromHeight(16.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0), 
            child: TextFormField(
              decoration: const InputDecoration(
                
                
                hintText: 'What are you looking for?',hintStyle: TextStyle(color: Colors.grey,fontSize: 17), 
                prefixIcon: Icon(Icons.search, color: Colors.grey), 
                contentPadding: EdgeInsets.symmetric(vertical: 8.0), 
                border: OutlineInputBorder(
                
                  borderSide: BorderSide(color: Colors.white,),
                ),
                filled: true,
                fillColor: Colors.white, 
                
              ),
            ),
            
          ),
        ),
      
        ),
        body:const Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Divider(color: Color(0xffd49a83),),
            
             TabBar(
              
             
              isScrollable: true,
                labelPadding: EdgeInsets.all(6),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                 indicatorColor: Color(0xffd49a83),
                 dividerColor: Colors.white,
                 labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                tabs: [
                  Tab(text: 'Flowers & Plants'),
                  Tab(text: 'Gifts & Bundles'),
                  Tab(text: 'Occasions'),
                  Tab(text: 'Express Delivery'),
                ],
              ),
              Expanded(
                
                child: TabBarView(
                  children: [
                    FlowersPlants(),
                    GiftsBundles(),
                    Occasions(),
                     ExpressDelivery(),
                  ],
                ),
              ),
          ],
        ) ,
        
        
      ),
    );
    
  }
}