import 'package:flutter/material.dart';

/// 余白やスペースを一元管理するためのユーティリティクラス
class AppSpace {
  // コンストラクタはプライベートにしてインスタンス化を防ぐ
  AppSpace._();

  //
  // --- 基本となるサイズ定数 (xs, s, m, l, xl) ---
  //
  static const double xs = 4;
  static const double s  = 8;
  static const double m  = 16;
  static const double l  = 24;
  static const double xl = 32;

  //
  // --- SizedBox 用 (高さ/幅指定) ---
  //
  // 高さ
  static const SizedBox hXS = SizedBox(height: xs);
  static const SizedBox hS  = SizedBox(height: s);
  static const SizedBox hM  = SizedBox(height: m);
  static const SizedBox hL  = SizedBox(height: l);
  static const SizedBox hXL = SizedBox(height: xl);

  // 幅
  static const SizedBox wXS = SizedBox(width: xs);
  static const SizedBox wS  = SizedBox(width: s);
  static const SizedBox wM  = SizedBox(width: m);
  static const SizedBox wL  = SizedBox(width: l);
  static const SizedBox wXL = SizedBox(width: xl);

  //
  // --- EdgeInsets 用 (パディング指定) ---
  //
  // all
  static const EdgeInsets pXS = EdgeInsets.all(xs);
  static const EdgeInsets pS  = EdgeInsets.all(s);
  static const EdgeInsets pM  = EdgeInsets.all(m);
  static const EdgeInsets pL  = EdgeInsets.all(l);
  static const EdgeInsets pXL = EdgeInsets.all(xl);

  // horizontal
  static const EdgeInsets pxXS = EdgeInsets.symmetric(horizontal: xs);
  static const EdgeInsets pxS  = EdgeInsets.symmetric(horizontal: s);
  static const EdgeInsets pxM  = EdgeInsets.symmetric(horizontal: m);
  static const EdgeInsets pxL  = EdgeInsets.symmetric(horizontal: l);
  static const EdgeInsets pxXL = EdgeInsets.symmetric(horizontal: xl);

  // vertical
  static const EdgeInsets pyXS = EdgeInsets.symmetric(vertical: xs);
  static const EdgeInsets pyS  = EdgeInsets.symmetric(vertical: s);
  static const EdgeInsets pyM  = EdgeInsets.symmetric(vertical: m);
  static const EdgeInsets pyL  = EdgeInsets.symmetric(vertical: l);
  static const EdgeInsets pyXL = EdgeInsets.symmetric(vertical: xl);

  // left
  static const EdgeInsets plXS = EdgeInsets.only(left: xs);
  static const EdgeInsets plS  = EdgeInsets.only(left: s);
  static const EdgeInsets plM  = EdgeInsets.only(left: m);
  static const EdgeInsets plL  = EdgeInsets.only(left: l);
  static const EdgeInsets plXL = EdgeInsets.only(left: xl);

  // right
  static const EdgeInsets prXS = EdgeInsets.only(right: xs);
  static const EdgeInsets prS  = EdgeInsets.only(right: s);
  static const EdgeInsets prM  = EdgeInsets.only(right: m);
  static const EdgeInsets prL  = EdgeInsets.only(right: l);
  static const EdgeInsets prXL = EdgeInsets.only(right: xl);

  // top
  static const EdgeInsets ptXS = EdgeInsets.only(top: xs);
  static const EdgeInsets ptS  = EdgeInsets.only(top: s);
  static const EdgeInsets ptM  = EdgeInsets.only(top: m);
  static const EdgeInsets ptL  = EdgeInsets.only(top: l);
  static const EdgeInsets ptXL = EdgeInsets.only(top: xl);

  // bottom
  static const EdgeInsets pbXS = EdgeInsets.only(bottom: xs);
  static const EdgeInsets pbS  = EdgeInsets.only(bottom: s);
  static const EdgeInsets pbM  = EdgeInsets.only(bottom: m);
  static const EdgeInsets pbL  = EdgeInsets.only(bottom: l);
  static const EdgeInsets pbXL = EdgeInsets.only(bottom: xl);
}
