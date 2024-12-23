part of 'radio_button_bloc.dart';

abstract class RadioButtonEvent {}

class ToggleRadioButtonEvent extends RadioButtonEvent {
  final int index;

  ToggleRadioButtonEvent(this.index);
}
