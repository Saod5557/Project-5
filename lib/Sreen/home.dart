import 'package:floward/bloc/flowaer_bloc.dart'; // Importing the BLoC related to the home screen

import 'package:flutter/material.dart'; // Flutter material library
import 'package:flutter_bloc/flutter_bloc.dart'; // Flutter BLoC library for state management

import '../widget/best_seller.dart'; // Importing the best seller widget
import '../widget/brands.dart'; // Importing the brands widget
import '../widget/categories.dart'; // Importing the categories widget
import '../widget/custom_appbar.dart'; // Importing the custom app bar widget

import '../widget/gift_widget.dart'; // Importing the gift widget
import '../widget/new.dart'; // Importing the new widget

class Home extends StatelessWidget {
  const Home({super.key}); // Constructor for the Home widget

  get child => null; // Get method for the child widget

  @override
  Widget build(BuildContext context) {
    // Building the home screen widget
    context.read<FlowaerBloc>().add(
        LoadEvent()); // Triggering an event to load data using the BLoC pattern
    return Scaffold(
      // Scaffold widget for the home screen layout
      appBar: PreferredSize(
        // Custom preferred size for the app bar
        preferredSize: const Size.fromHeight(
            160.0), // Setting the preferred size of the app bar
        child: CustomAppBar(), // Using the custom app bar widget
      ),
      body: Padding(
        // Padding widget for the body content
        padding: const EdgeInsets.all(12.0), // Setting padding for the content
        child: ListView(children: [
          // ListView to contain the content of the home screen
          SizedBox(height: 10), // Empty space with defined height

          Text(
            // Text widget to display "Gift by Occasion"
            "Gift by Occasion",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20), // Styling for the text
          ),

          SizedBox(
            // Empty space with defined height
            height: 10,
          ),

          GiftWidget(), // Gift by Occasion Widget

          SizedBox(
            // Empty space with defined height
            height: 10,
          ),

          BlocBuilder<FlowaerBloc, FlowaerState>(
            // BlocBuilder to build UI based on BLoC state
            builder: (context, state) {
              if (state is FlowaerInitial || state is LoadingState) {
                // Checking initial or loading state
                return const Center(
                    child:
                        CircularProgressIndicator()); // Showing a loading indicator
              } else if (state is SuccessState) {
                // Checking success state
                return SingleChildScrollView(
                  // Allowing horizontal scrolling
                  scrollDirection: Axis.horizontal, // Setting scroll direction
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0), // Setting padding
                    child: Row(
                      children: [
                        ...state
                            .categorieslist // Mapping category data to category widgets
                            .map((m) => Categories(
                                  dataategories: m,
                                ))
                            .toList()
                      ],
                    ),
                  ),
                );
              } else {
                // Handling other states
                return const Text(" Invaild"); // Showing an "Invalid" message
              }
            },
          ),

          //New Flowers

          const SizedBox(
            // Empty space with defined height
            height: 40,
          ),
          Text(
            // Text widget to display "What's New"
            "What's New",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20), // Styling for the text
          ),
          SizedBox(
            // Empty space with defined height
            height: 10,
          ),
          BlocBuilder<FlowaerBloc, FlowaerState>(
            // BlocBuilder to build UI based on BLoC state
            builder: (context, state) {
              if (state is FlowaerInitial || state is LoadingState) {
                // Checking initial or loading state
                return const Center(
                    child:
                        CircularProgressIndicator()); // Showing a loading indicator
              } else if (state is SuccessState) {
                // Checking success state
                return SingleChildScrollView(
                  // Allowing horizontal scrolling
                  scrollDirection: Axis.horizontal, // Setting scroll direction
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0), // Setting padding
                    child: Row(
                      children: [
                        ...state
                            .flowaerlist // Mapping new flower data to new widgets
                            .map((m) => New(
                                  newdata: m,
                                ))
                            .toList()
                      ],
                    ),
                  ),
                );
              } else {
                // Handling other states
                return const Text(" Invaild"); // Showing an "Invalid" message
              }
            },
          ),

          //Best seller

          const SizedBox(
            // Empty space with defined height
            height: 40,
          ),
          Text(
            // Text widget to display "Bestsellers"
            "Bestsellers",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20), // Styling for the text
          ),
          SizedBox(
            // Empty space with defined height
            height: 10,
          ),
          BlocBuilder<FlowaerBloc, FlowaerState>(
            // BlocBuilder to build UI based on BLoC state
            builder: (context, state) {
              if (state is FlowaerInitial || state is LoadingState) {
                // Checking initial or loading state
                return const Center(
                    child:
                        CircularProgressIndicator()); // Showing a loading indicator
              } else if (state is SuccessState) {
                // Checking success state
                return SingleChildScrollView(
                  // Allowing horizontal scrolling
                  scrollDirection: Axis.horizontal, // Setting scroll direction
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0), // Setting padding
                    child: Row(
                      children: [
                        ...state
                            .flowaerlist // Mapping best seller data to best seller widgets
                            .map((m) => BestSeller(
                                  data: m,
                                ))
                            .toList()
                      ],
                    ),
                  ),
                );
              } else {
                // Handling other states
                return const Text(" Invaild"); // Showing an "Invalid" message
              }
            },
          ),
          //brands widget
          const SizedBox(
            // Empty space with defined height
            height: 10,
          ),

          Container(
              // Container widget for brands
              height: 30,
              color: Color(0xfff8f8f8),
              child: Text(
                "Brands",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20), // Styling for the text
              )),
          BlocBuilder<FlowaerBloc, FlowaerState>(
            // BlocBuilder to build UI based on BLoC state
            builder: (context, state) {
              if (state is FlowaerInitial || state is LoadingState) {
                // Checking initial or loading state
                return const Center(
                    child:
                        CircularProgressIndicator()); // Showing a loading indicator
              } else if (state is SuccessState) {
                // Checking success state
                return Container(
                  // Container widget to contain brand widgets
                  height: 180,
                  color: Color(0xfff8f8f8),
                  child: SingleChildScrollView(
                    // Allowing horizontal scrolling
                    scrollDirection:
                        Axis.horizontal, // Setting scroll direction
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0), // Setting padding
                      child: Row(
                        children: [
                          ...state
                              .brandslist // Mapping brand data to brand widgets
                              .map((m) => Brand(
                                    branddata: m,
                                  ))
                              .toList()
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                // Handling other states
                return const Text(" Invaild"); // Showing an "Invalid" message
              }
            },
          ),
        ]),
      ),
    );
  }
}
