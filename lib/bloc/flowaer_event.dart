part of 'flowaer_bloc.dart';

@immutable
sealed class FlowaerEvent {}

final class LoadEvent extends FlowaerEvent{}

class ToggleAllViewEvent extends FlowaerEvent {
  
}