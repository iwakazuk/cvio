import 'package:flutter/material.dart';
import '../utils/app_space.dart';

class AppTextFieldRow extends StatefulWidget {
  final String? label;
  final List<String>? initialValues;
  final List<String>? hintTexts;
  final TextInputType? keyboardType;
  final String? requiredErrorText;
  final List<ValueChanged<String>>? onChanges;
  final List<String>? separators;

  const AppTextFieldRow({
    this.label,
    this.initialValues,
    this.hintTexts,
    this.keyboardType,
    this.requiredErrorText,
    this.onChanges,
    this.separators,
    Key? key,
  }) : super(key: key);

  @override
  _AppTextFieldRowState createState() => _AppTextFieldRowState();
}

class _AppTextFieldRowState extends State<AppTextFieldRow> {
  bool isValidate = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          AppSpace.hL,
          Text(
            widget.label!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          AppSpace.hS,
        ],
        Row(
          children: [
            for (var i = 0; i < (widget.initialValues?.length ?? 0); i++) ...[
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: widget.hintTexts?[i],
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(color: Colors.deepOrange),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                  ),
                  keyboardType: widget.keyboardType,
                ),
              ),
              AppSpace.wS,
              if (widget.separators != null &&
                  i < widget.separators!.length) ...[
                Text(
                  widget.separators![i],
                  style: const TextStyle(fontSize: 16),
                ),
                AppSpace.wS,
              ],
            ],
          ],
        ),
        if (isValidate && widget.requiredErrorText != null) ...[
          SizedBox(height: 4),
          Row(
            children: [
              AppSpace.wM,
              Text(
                widget.requiredErrorText!,
                style: const TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 186, 26, 26)),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
