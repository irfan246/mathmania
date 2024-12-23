import 'package:bloc/bloc.dart';

part 'radio_button_event.dart';
part 'radio_button_state.dart';

class RadioButtonBloc extends Bloc<RadioButtonEvent, RadioButtonState> {
  RadioButtonBloc() : super(RadioButtonState(-1)) {
    on<ToggleRadioButtonEvent>((event, emit) {
      emit(RadioButtonState(event.index));
    });
  }
}
