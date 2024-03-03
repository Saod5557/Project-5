import 'package:floward/models/floward_data.dart';
import 'package:flutter/material.dart';

import '../Sreen/details_prudct.dart';

class New extends StatelessWidget {
  final FlowardsData? newdata;

  const New({Key? key, this.newdata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsPrudct(details: newdata),
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
                    color: Colors.white,
                  ),
                  clipBehavior: Clip.antiAlias,
                  height: 140,
                  width: 130,
                  child: Stack(
                    children: [
                      Image.asset(
                        newdata?.img ?? "",
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                            ),
                          ),
                          child: Text(
                            'NEW',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(newdata?.title ?? "",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 11)),
                Text(newdata?.price ?? "",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
