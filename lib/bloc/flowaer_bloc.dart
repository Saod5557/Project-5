import 'package:bloc/bloc.dart';
import 'package:floward/models/floward_data.dart';
import 'package:meta/meta.dart';

import '../Data/data_json.dart';

part 'flowaer_event.dart';
part 'flowaer_state.dart';

class FlowaerBloc extends Bloc<FlowaerEvent, FlowaerState> {
  //  List<BrandData> save = [];
  //   List<BrandData> Listb= [];

  FlowaerBloc() : super(FlowaerInitial()) {
    // on<FlowaerEvent>((event, emit) {
    //   // TODO: implement event handler
    // });


    on<LoadEvent>((event, emit) {
      try {
        emit(LoadingState());

       List<FlowardsData> listflowaes = [];
         List<CategoriesData> listcategories = [];
          List<BrandData> listbrands = [];
         List<NewFlowardsData> listnew = [];
        
        
        for (var element in flowardlist) {
          listflowaes.add(FlowardsData.fromJson(element));
          print(listflowaes[0]);

        }
        for (var element in categorieslist) {
          listcategories.add(CategoriesData.fromJson(element));
          print(listcategories[0]);
          
        }
         for (var element in brandslist) {
          listbrands.add(BrandData.fromJson(element));
          print(listbrands[0]);
          
        }
        for (var element in newlist) {
          listnew.add(NewFlowardsData.fromJson(element));
          print(listnew[0]);

        }
        

        //load data

        emit(SuccessState(flowaerlist: listflowaes, cart: const [],categorieslist: listcategories,brandslist: listbrands,newlist: listnew));
      } catch (error) {
        emit(ErrorState());
      }
    });

      // التعامل مع ToggleAllViewEvent
    on<ToggleAllViewEvent>((event, emit) {
      if (state is SuccessState) {
        // تبديل حالة العرض
        emit((state as SuccessState).copyWith(showAll: !(state as SuccessState).showAll));
      }
    });
  
  }
}
