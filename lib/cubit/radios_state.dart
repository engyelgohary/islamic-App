part of 'radios_cubit.dart';

@immutable
sealed class RadiosState {}

final class RadiosInitial extends RadiosState {}

class RadioSuccessState extends RadiosState {}

class RadioErrorState extends RadiosState {
  final String error;

  RadioErrorState({required this.error});
}
