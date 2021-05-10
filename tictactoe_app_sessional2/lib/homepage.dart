import 'package:flutter/material.dart';
import 'package:tictactoe_app_sessional2/theme/multitheme.dart';
import 'package:tictactoe_app_sessional2/theme/theme_color_provider.dart';
import 'package:tictactoe_app_sessional2/theme/theme_colors.dart';
import 'package:tictactoe_app_sessional2/theme/themes.dart';
import 'dart:async';
import 'AppColors.dart';
import 'maindrawer.dart';
import 'Simplemode/simplepage.dart';
import 'HardMode/hardmode.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, ThemeColors> map = new Map();
    map[Themes.dark] = Themes.darkThemeColors();
    map[Themes.light] = Themes.lightThemeColors();

    return MultiTheme(
      themes: map,
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: Homepage(),
        );
      },
    );
  }
}


class Homepage extends StatefulWidget {
Homepage({Key key, this.title}) : super(key: key);
final String title;
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isDark = true;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: ThemeColorProvider().getThemeColors().asStream(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        Map<String, dynamic> colors = snapshot.data;
        return Scaffold(
          backgroundColor: Color(colors[Themes.backgroundColor]),
          appBar: AppBar(
            title: Text("TIC TAC TOE",
                style: TextStyle(color: AppColors.kPrimaryColor)),
            iconTheme: IconThemeData(color: AppColors.kPrimaryColor),
            centerTitle: true,
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.home,
                    color: AppColors.kPrimaryColor,
                  ),
                  onPressed: () async {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ));
                  }),
            ],),
          drawer: Drawer(
            child: MainDrawer(),
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SimpleLevel()));
                    },
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      padding: EdgeInsets.symmetric(
                          vertical: 12, horizontal: 30),
                      decoration: BoxDecoration(
                          color: AppColors.kPrimaryColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: Text("Simple", textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.kWhiteColor,
                            fontSize: 18
                        ),),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HardLevel())
                      );
                    },
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      padding: EdgeInsets.symmetric(
                          vertical: 12, horizontal: 30),
                      decoration: BoxDecoration(
                          color: AppColors.kPrimaryColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: Text("Hard", textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.kWhiteColor,
                            fontSize: 18
                        ),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (isDark) {
                ThemeColorProvider().changeTheme(Themes.light);
              } else {
                ThemeColorProvider().changeTheme(Themes.dark);
              }
              isDark = !isDark;
            },
            child: Icon(Icons.change_history),
          ),
        );
      }
      return Container();
    }
    );

  }
}
