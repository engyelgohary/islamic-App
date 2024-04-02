import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/api/api_manager.dart';
import 'package:islami/model/radio_response.dart';

part 'radios_state.dart';

class RadiosCubit extends Cubit<RadiosState> {
  List<Radios>? radios = [];
  Radios? currentRadio;
  int currentIndex = 0;
  final player = AudioPlayer();
  bool isPlay = false;
  ApiManager apiManager = ApiManager();

  RadiosCubit() : super(RadiosInitial()) {
    getRadios();
  }

  getRadios() async {
    try {
      var response = await apiManager.getRadios();
      var data = RadioResponse.fromJson(response);
      radios = data.radios;
      currentRadio = radios![currentIndex];
      emit(RadioSuccessState());
    } catch (e) {
      emit(RadioErrorState(error: e.toString()));
    }
  }

  previousRadio() {
    if (currentIndex == 0) return;
    player.stop();
    isPlay = false;
    currentIndex--;
    currentRadio = radios![currentIndex];
    emit(RadioSuccessState());
  }

  nextRadio() {
    if (currentIndex == radios!.length - 1) return;
    player.stop();
    isPlay = false;
    currentIndex++;
    currentRadio = radios![currentIndex];
    emit(RadioSuccessState());
  }

  clickOnPlay() {
    if (player.state == PlayerState.playing) {
      isPlay = false;
      player.pause();
    } else if (player.state == PlayerState.paused) {
      isPlay = true;
      player.resume();
    } else {
      isPlay = true;
      player.play(UrlSource(currentRadio!.url!));
    }
    emit(RadioSuccessState());
  }
}
