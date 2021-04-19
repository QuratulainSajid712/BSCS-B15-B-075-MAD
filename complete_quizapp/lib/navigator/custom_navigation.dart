import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "HomePage", icon: Icons.water_damage),
  NavigationModel(title: "Contact Us", icon: Icons.account_circle_outlined),
  NavigationModel(title: "Settings", icon: Icons.settings),
];