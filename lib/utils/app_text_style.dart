import 'package:flutter/material.dart';

/// アプリ全体で使用するテキストスタイルを一元管理するユーティリティクラス
class AppTextStyle {
  // コンストラクタはプライベートにしてインスタンス化を防ぐ
  AppTextStyle._();

  //
  // --- 基本スタイル ---
  //
  static const TextStyle base = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  //
  // --- 見出し系 ---
  //
  static final TextStyle header = base.copyWith(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle saveButton = base.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.deepOrange,
  );

  static final TextStyle sectionTitle = base.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white60,
  );

  static final TextStyle sectionTitleBold = base.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  //
  // --- ボディテキスト系 ---
  //
  static final TextStyle body = base.copyWith(
    fontSize: 12,
    color: Colors.white,
  );

  static final TextStyle bodyBold = base.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle bodyPrimary = base.copyWith(
    fontSize: 12,
    color: Colors.deepOrange,
  );

  static final TextStyle bodyWhite = base.copyWith(
    fontSize: 12,
    color: Colors.white,
  );

  static final TextStyle bodyButton = base.copyWith(
    fontSize: 14,
    color: Colors.deepOrange,
  );
}
