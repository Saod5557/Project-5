import 'package:floward/models/floward_data.dart';
import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  // final BestSeller? data;
  final BrandData? branddata;

  const Brand({Key? key, this.branddata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                clipBehavior: Clip.antiAlias,
                height: 140,
                width: 130,
                child: Image.asset(
                  branddata?.img ?? "",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
