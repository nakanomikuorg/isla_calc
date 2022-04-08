import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CustomColorPicker extends StatelessWidget {
  const CustomColorPicker({
    Key? key,
    required this.pickerColor,
    required this.onColorChanged,
  }) : super(key: key);

  final Color pickerColor;
  final Function onColorChanged;

  @override
  Widget build(BuildContext context) {
    return BlockPicker(
      pickerColor: pickerColor,
      onColorChanged: (Color color) {
        onColorChanged(color);
      },
      layoutBuilder: (
        BuildContext context,
        List<Color> colors,
        PickerItem child,
      ) {
        Orientation orientation = MediaQuery.of(context).orientation;

        return SizedBox(
          width: 300.0,
          height: 300.0,
          child: GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 4 : 6,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: [for (Color color in colors) child(color)],
          ),
        );
      },
    );
  }
}
