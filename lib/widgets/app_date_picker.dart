import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../utils/app_space.dart';
import '../utils/app_text_style.dart';

class AppDatePicker extends StatefulWidget {
  final DateTime? initialDate;
  final String? label;
  final DateTime firstDate;
  final DateTime lastDate;
  final Function(DateTime) onDateSelected;

  const AppDatePicker({
    Key? key,
    required this.initialDate,
    this.label,
    required this.firstDate,
    required this.lastDate,
    required this.onDateSelected,
  }) : super(key: key);

  @override
  _AppDatePickerState createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  @override
  void didUpdateWidget(covariant AppDatePicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialDate != oldWidget.initialDate) {
      _selectedDate = widget.initialDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 130,
          child: Text(
            widget.label ?? '日付',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () async {
              DateTime tempPickedDate = _selectedDate ?? widget.firstDate;
              showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 250,
                    color: Colors.grey.shade800,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CupertinoButton(
                              child: Text(
                                '完了',
                                style: AppTextStyle.saveButton,
                              ),
                              onPressed: () {
                                setState(() {
                                  _selectedDate = tempPickedDate;
                                });
                                widget.onDateSelected(tempPickedDate);
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                        Expanded(
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            maximumDate: widget.lastDate,
                            initialDateTime: _selectedDate ?? widget.firstDate,
                            onDateTimeChanged: (DateTime dateTime) {
                              tempPickedDate = dateTime;
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Padding(
              padding: AppSpace.pyM,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      _selectedDate != null
                          ? DateFormat('yyyy/MM/dd').format(_selectedDate!)
                          : '日付を選択',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(
                    CupertinoIcons.chevron_up_chevron_down,
                    color: Theme.of(context).disabledColor,
                    size: 20,
                  ),
                  AppSpace.wM,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
