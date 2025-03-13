import 'package:flutter/material.dart';

import '../utils/app_space.dart';

class AppTextField extends StatefulWidget {
  final String? label;
  final String? initialValue;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? errorText;
  final ValueChanged<String>? onChanged;

  const AppTextField({
    Key? key,
    this.label,
    this.initialValue,
    this.hintText,
    this.keyboardType,
    this.errorText,
    this.onChanged,
  }) : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  /// テキスト入力コントローラ
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    // initialValue をコントローラに反映
    _controller = TextEditingController(text: widget.initialValue ?? '');
  }

  /// 親から [widget.initialValue] が変わった場合に呼ばれる
  @override
  void didUpdateWidget(covariant AppTextField oldWidget) {
    super.didUpdateWidget(oldWidget);

    // 1) 親WidgetのinitialValue自体が変わったか
    // 2) かつ現在コントローラのテキストと違う場合のみ再設定
    final newVal = widget.initialValue ?? '';
    if (oldWidget.initialValue != widget.initialValue &&
        _controller.text != newVal) {
      // 変換中などの誤作動防止のため、selectionなどを一度リセット
      final newSelection = TextSelection.collapsed(offset: newVal.length);
      _controller.value = _controller.value.copyWith(
        text: newVal,
        selection: newSelection,
        composing: TextRange.empty, // 入力途中の変換状態をリセット
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.label != null)
              SizedBox(
                width: 130,
                child: Text(
                  widget.label!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            Expanded(
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                maxLines:
                    widget.keyboardType == TextInputType.multiline ? null : 1,
                textInputAction: widget.keyboardType == TextInputType.multiline
                    ? TextInputAction.newline
                    : TextInputAction.done,
                keyboardType: widget.keyboardType,
                onChanged: widget.onChanged,
              ),
            ),
            AppSpace.wM,
          ],
        ),
        if (widget.errorText != null) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.error, color: Colors.red, size: 16),
              AppSpace.wXS,
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Text(
                  widget.errorText!,
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
            ],
          ),
          AppSpace.hS,
        ],
      ],
    );
  }
}
