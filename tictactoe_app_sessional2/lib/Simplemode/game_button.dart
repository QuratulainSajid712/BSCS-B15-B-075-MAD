import 'package:flutter/material.dart';
import 'package:tictactoe_app_sessional2/AppColors.dart';

class GameButton {
  final id;
  String text;
  Color bg;
  bool enabled;

  GameButton(
      {this.id, this.text = "", this.bg = AppColors.kPrimaryColor, this.enabled = true});
}
