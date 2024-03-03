import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xfff6f7f2),
      
      elevation: 0, // Removes the shadow from the app bar.
      leading:
      
       Padding(
         padding: const EdgeInsets.only(top: 10),
         child: Image.asset('images/logo.jpg'),
       ),
     
    
      title: Column(
        children: [
          SizedBox(height: 12),
          Text(
            'Deliver to Recipient in',
            style: TextStyle(
              color: Colors.black, // Adjust color to match your design.
              fontSize: 14,
              fontWeight:FontWeight.w400 // Adjust font size to match your design.
            ),
          ),
        
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Image.asset(
            'images/riyadh.jpg',
            width: 90.0,
            height: 30.0,
            fit: BoxFit.cover, // هذا يضمن تغطية المساحة المحددة مع الحفاظ على نسب الأبعاد
          ),
        )

        ],
      ),
      
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(2.0), // Adjust size to match your design.
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0), // Adjust padding to match your design.
          child: TextFormField(
            decoration: InputDecoration(
              
              hintText: 'What are you looking for?',hintStyle: TextStyle(color: Colors.teal), // Adjust text to match your design.
              prefixIcon: Icon(Icons.search, color: Colors.teal), // Adjust color to match your design.
              contentPadding: EdgeInsets.symmetric(vertical: 8.0), // Adjust padding to match your design.
              border: OutlineInputBorder(
              
                borderSide: BorderSide(color: Colors.grey),
              ),
              filled: true,
              fillColor: Colors.grey[200], // Adjust color to match your design.
               constraints: BoxConstraints( // التحكم في حجم المستطيل
                  minHeight: 80, // الحد الأدنى للارتفاع
                  maxHeight: 80, 
              ),
            ),
          ),
        ),
      ),
    );
  }


}

