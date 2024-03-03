import 'package:flutter/material.dart';

class GiftByOccasion extends StatelessWidget {
  const GiftByOccasion({super.key, this.imgg, this.titleg});
  
  // String? get imfg => null;
  final imgg;
   final titleg;
  // String? get titleg => null;

  @override
  Widget build(BuildContext context) {
    return  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  
                                                   children: [
                                                     Container(
                                                             
                                       decoration: const BoxDecoration(
                                    color:  Color(0xfff0e9e0),
                                   
                                  ),
                                            clipBehavior: Clip.antiAlias,
                                          height: 83,
                                        width: 83,
                                       child: Image.asset(
                                          imgg,
                                          fit: BoxFit.cover,
                                        ),
                                        
                                                     
                                                         ),
                                                         
                                                              SizedBox(width: 5,height: 8,),
                                                              SizedBox(child: Text(titleg,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10))),
                                                           
                                                       
                                                         
                                                         
                                                   ],
                                  );
                               
                           
                //  const SizedBox(width: 10),  //Divider
                               
                            
                               
                 
                             
                       
                       
                            
                          
             
           
  }
}