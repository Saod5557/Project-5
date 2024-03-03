import 'package:floward/models/floward_data.dart';
import 'package:flutter/material.dart';

import '../Sreen/details_prudct.dart';

class BestSeller extends StatelessWidget {
  
   final FlowardsData? data;
  
   const BestSeller({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return
    
    
      InkWell(
        onTap: () {
            // Navigate to the details page when the card is tapped
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsPrudct(details: data),
              ),
            );
          },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  
                   Container(
                           
                                   decoration: const BoxDecoration(
                                color:  Colors.white,
                               
                              ),
                                        clipBehavior: Clip.antiAlias,
                                      height: 140,
                                    width: 130,
                                    child: Image.asset(
                                      data?.img??"",
                                      fit: BoxFit.fill,
                                    ),

                           
                   
                       ),
                       Text(data?.title??"",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11)),
          
                       Text( data?.price??"",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                 ],
               ),
               
                 
               
               
             ],
                 ),
        ),
      );
  }
}