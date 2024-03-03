import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/flowaer_bloc.dart';
import 'gift_by_occasion.dart';

class GiftWidget extends StatelessWidget {
  const GiftWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Row(
        children: [
          GiftByOccasion(imgg: "images/cake.jpg", titleg: "Happy birthday"),
          SizedBox(width: 10),
          GiftByOccasion(imgg: "images/get.jpg", titleg: "  Get Well Soon"),
          SizedBox(width: 10),
          GiftByOccasion(imgg: "images/thank.jpg", titleg: "   Thank You",),
          SizedBox(width: 10),
          GiftByOccasion(imgg: "images/happy.jpg", titleg: "       Happy \n   Anniversary"),
        ],
      ),
      const SizedBox(
        height: 16,
      ),

      const Row(
        children: [
          GiftByOccasion(imgg: "images/weddings.jpg", titleg: "    Weddings"),
          SizedBox(width: 10),
          GiftByOccasion(
              imgg: "images/congratulations.jpg", titleg: "Congratulations"),
          SizedBox(width: 10),
          GiftByOccasion(
              imgg: "images/promotion.jpg", titleg: "    Promotion \nCongratulations"),
          SizedBox(width: 10),
          GiftByOccasion(imgg: "images/umrah.jpg", titleg: "  Umrah Mubarak"),
        ],
      ),
      SizedBox(height: 15,),

    
      BlocBuilder<FlowaerBloc, FlowaerState>(
        builder: (context, state) {
          
          List<Widget> lastRowItems = [];

     
          if (state is SuccessState && state.showAll) {
            lastRowItems.addAll([
              const GiftByOccasion(
                  imgg: "images/love.jpg", titleg: "    I Love You"),
              const SizedBox(width: 10),
              const GiftByOccasion(
                  imgg: "images/baby.jpg", titleg: "   New Baby Born"),
              const SizedBox(width: 10),
              const GiftByOccasion(
                  imgg: "images/graduation.jpg", titleg: "    Graduation"),
                  

        
            ]
            );
            
          }

          return Row(children: lastRowItems);
        },
      ),

      
      TextButton(
        onPressed: () => context.read<FlowaerBloc>().add(ToggleAllViewEvent()),
        child: BlocBuilder<FlowaerBloc, FlowaerState>(
          builder: (context, state) {
            if (state is SuccessState && state.showAll) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xff056783),
                  )
                ),
                
                width: 350,
                height: 36,
                child: Center(child: const Text('View Less Occasions',style: TextStyle(color: Color(0xff056783)),)));
            }
            return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xff056783),
                  )
                ),
                
                width: 350,
                height: 36,
                child: Center(child: const Text('View All Occasions',style: TextStyle(color: Color(0xff056783)),)));
          },
        ),
      ),

      const SizedBox(height: 16),
    ]);
  }
}

