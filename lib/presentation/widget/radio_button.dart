import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mathmania/application/bloc_button_radion/radio_button_bloc.dart';

class RadioButton extends StatelessWidget {
  final List<String> options = ["Option 1", "Option 2", "Option 3"];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(options.length, (index) {
        return BlocBuilder<RadioButtonBloc, RadioButtonState>(
          builder: (context, state) {
            return CustomRadioButton(
              isSelected: state.selectedIndex == index,
              onTap: () {
                context
                    .read<RadioButtonBloc>()
                    .add(ToggleRadioButtonEvent(index));
              },
              label: options[index],
            );
          },
        );
      }),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String label;

  const CustomRadioButton({
    Key? key,
    required this.isSelected,
    required this.onTap,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(bottom: screenHeight * 0.038),
        child: SizedBox(
          width: screenWidth * 0.053125,
          height: screenHeight * 0.0804165,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFB4CFFF),
                  offset: Offset(screenWidth * -0.0073, screenHeight * 0.0161),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(screenWidth * 0.00522),
            ),
            child: isSelected
                ? Image(
                    image: AssetImage('assets/images/icon_check.png'),
                  )
                : SizedBox(),
          ),
        ),
      ),
    );
  }
}
