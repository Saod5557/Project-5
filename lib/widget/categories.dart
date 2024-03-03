import 'package:flutter/material.dart';

import '../models/floward_data.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    this.dataategories,
  });

  // String? get imfg => null;
  final CategoriesData? dataategories;

  // String? get titleg => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xfff0e9e0),
              borderRadius: BorderRadius.circular(150),
            ),
            clipBehavior: Clip.antiAlias,
            height: 50,
            width: 50,
            child: Image.asset(
              dataategories?.img ?? "",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            children: [
              SizedBox(
                width: 6,
              ),
              Center(
                child: Text(dataategories?.title ?? "",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 10)),
              ),
            ],
          ),
        ],
      ),
    );

    //  const SizedBox(width: 10),  //Divider
  }
}
