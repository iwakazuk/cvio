import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../utils/app_space.dart';
import '../utils/app_text_style.dart';

class AppSegment extends StatefulWidget {
  final String? label;
  final List<String> values;
  final Function(bool) onChanged;

  const AppSegment({
    Key? key,
    this.label,
    required this.values,
    required this.onChanged,
  }) : super(key: key);

  @override
  _AppSegmentState createState() => _AppSegmentState();
}

class _AppSegmentState extends State<AppSegment> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 130,
          child: Text(
            widget.label ?? '',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: AppSpace.prM + AppSpace.pyS,
            child: CustomSlidingSegmentedControl<String>(
              height: 30,
              children: {
                "0": Padding(
                  padding: AppSpace.pXS,
                  child: Text(
                    widget.values[0],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                '1': Padding(
                  padding: AppSpace.pXS,
                  child: Text(
                    widget.values[1],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              },
              onValueChanged: (v) => widget.onChanged(v == '0'),
              decoration: BoxDecoration(
                color: Theme.of(context).focusColor,
                borderRadius: BorderRadius.circular(8),
              ),
              thumbDecoration: BoxDecoration(
                color: Theme.of(context).disabledColor.withAlpha(70),
                borderRadius: BorderRadius.circular(8),
              ),
              isStretch: true,
            ),
          ),
        ),
      ],
    );
  }
}
