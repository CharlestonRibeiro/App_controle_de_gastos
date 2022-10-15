import 'package:flutter/material.dart';

class ChartBarWidget extends StatelessWidget {
  final String label;
  final double value;
  final double percent;

  const ChartBarWidget({
    Key? key,
    required this.label,
    required this.value,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      final barHeight = constraints.maxHeight * .6;

      return Column(
        children: [
          SizedBox(
            height: constraints.maxHeight * .15,
            child: FittedBox(child: Text(value.toStringAsFixed(2))),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: barHeight,
            width: 10,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Container(
                  height: barHeight * percent,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * .15,
            child: FittedBox(child: Text(label)),
          ),
        ],
      );
    });
  }
}
