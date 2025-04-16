import 'package:flutter/material.dart';

import '../utils/app_space.dart';

class AppDropdown extends StatefulWidget {
  final String label;

  /// 初期値
  final String? initialValue;

  /// エラーメッセージ`
  final String? errorText;

  /// ドロップダウンで選択可能な文字列のリスト
  final List<String> values;

  /// 値が変更されたときに呼ばれるコールバック
  final ValueChanged<String?> onChanged;

  const AppDropdown({
    Key? key,
    required this.label,
    this.initialValue,
    this.errorText,
    required this.values,
    required this.onChanged,
  }) : super(key: key);

  @override
  _AppDropdownState createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  /// 現在選択されている値を保持する変数
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _updateSelectedValue();
  }

  /// 親ウィジェットからパラメータが変化した際に呼ばれる
  @override
  void didUpdateWidget(covariant AppDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    // initialValue か values が変わったら再チェックする
    if (widget.initialValue != oldWidget.initialValue ||
        widget.values != oldWidget.values) {
      _updateSelectedValue();
    }
  }

  /// ドロップダウン表示用に _selectedValue を更新する共通メソッド
  void _updateSelectedValue() {
    if (widget.initialValue != null &&
        widget.values.contains(widget.initialValue)) {
      _selectedValue = widget.initialValue;
    } else {
      _selectedValue = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 130,
              child: Text(
                widget.label,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: DropdownButton<String>(
                borderRadius: BorderRadius.circular(12),
                underline: Container(),
                dropdownColor: Colors.grey[700],
                menuWidth: 120,
                isExpanded: true,
                // 現在選択されている値
                value: _selectedValue,
                // 候補となるアイテムのリスト
                items: widget.values.map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue;
                  });
                  // 外部から受け取ったコールバックを実行
                  widget.onChanged(newValue);
                },
              ),
            ),
            AppSpace.wM,
          ],
        ),
        if (widget.errorText != null) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.error,
                color: Colors.red,
                size: 16,
              ),
              AppSpace.wXS,
              Text(
                widget.errorText!,
                style: const TextStyle(color: Colors.red, fontSize: 12),
              ),
            ],
          ),
          AppSpace.hS,
        ],
      ],
    );
  }
}
