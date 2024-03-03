import 'package:flutter/material.dart';

class CatalogueWidget extends StatelessWidget {
  const CatalogueWidget({super.key, this.title});
final title ;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 50,
      child: Row(children: [
              Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
               Spacer(),
             Icon((Icons.arrow_forward_ios),color: Color(0xffd49a83),size: 22,)
      
            ],),
    );
  }
}
