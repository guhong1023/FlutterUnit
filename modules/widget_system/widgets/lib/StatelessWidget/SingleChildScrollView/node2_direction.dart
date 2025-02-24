import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/4/27
/// contact me by email 1981462002@qq.com

class DirectionSingleChildScrollView extends StatelessWidget {
  const DirectionSingleChildScrollView({super.key});

  List<Color> get data => [
        Colors.blue[50]!,
        Colors.blue[100]!,
        Colors.blue[200]!,
        Colors.blue[300]!,
        Colors.blue[400]!,
        Colors.blue[500]!,
        Colors.blue[600]!,
        Colors.blue[700]!,
        Colors.blue[800]!,
        Colors.blue[900]!,
      ];

  TextStyle get textStyle => const TextStyle(
        color: Colors.white,
        shadows: [
          Shadow(
            color: Colors.black,
            offset: Offset(.5, .5),
            blurRadius: 2,
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: data
              .map((color) => Container(
                    alignment: Alignment.center,
                    width: 90,
                    color: color,
                    child: Text(
                      colorString(color),
                      style: textStyle,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }

  String colorString(Color color) =>
      "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";
}
