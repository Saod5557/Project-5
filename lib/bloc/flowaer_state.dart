part of 'flowaer_bloc.dart';

@immutable
sealed class FlowaerState {
  
}

final class FlowaerInitial extends FlowaerState {}


final class SuccessState extends FlowaerState {
  
  final List flowaerlist;
  
  final List<BrandData> cart;
   final bool showAll; 
   final List categorieslist;
    final List brandslist;
     final List newlist;
   
  SuccessState(   {required this.flowaerlist, required this.cart,this.showAll = false, required this.categorieslist, required this.brandslist,required this.newlist,});

   SuccessState copyWith({bool? showAll}) {
    return SuccessState(
      flowaerlist: this.flowaerlist,
      cart: this.cart,
      showAll: showAll ?? this.showAll,
      categorieslist: this.categorieslist,
       brandslist: this.brandslist,
        newlist: this.newlist,

);
  }
}

final class LoadingState extends FlowaerState {}



final class ErrorState extends FlowaerState {}