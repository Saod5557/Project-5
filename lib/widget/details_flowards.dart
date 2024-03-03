import 'package:flutter/material.dart';

import '../models/floward_data.dart';

class DetailsFlowards extends StatelessWidget {
  const DetailsFlowards({super.key, this.details});
 final FlowardsData? details;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
    );
  }
}