import 'dart:math';

import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:tictactoe_app_sessional2/theme/multitheme.dart';
import 'package:tictactoe_app_sessional2/theme/theme_color_provider.dart';
import 'package:tictactoe_app_sessional2/theme/theme_colors.dart';
import 'package:tictactoe_app_sessional2/theme/themes.dart';

import '../AppColors.dart';
import '../homepage.dart';
import 'custom_dialog.dart';
import 'game_button.dart';

class SimpleLevel extends StatelessWidget {
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
          home: simplepage(),
        );
      },
    );
  }
}
class simplepage extends StatefulWidget {
  simplepage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _simplepageState createState() => _simplepageState();
}

class _simplepageState extends State<simplepage> {
  bool isDark = true;
  List<GameButton> buttonsList;
  var player1;
  var player2;
  var activePlayer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buttonsList = doInit();
  }

  List<GameButton> doInit() {
    player1 = List();
    player2 = List();
    activePlayer = 1;

    var gameButtons = <GameButton>[
      GameButton(id: 1),
      GameButton(id: 2),
      GameButton(id: 3),
      GameButton(id: 4),
      GameButton(id: 5),
      GameButton(id: 6),
      GameButton(id: 7),
      GameButton(id: 8),
      GameButton(id: 9),
    ];
    return gameButtons;
  }

  void playGame(GameButton gb) {
    setState(() {
      if (activePlayer == 1) {
        gb.text = "X";
        gb.bg = AppColors.kOrangeColor;
        activePlayer = 2;
        player1.add(gb.id);
      } else {
        gb.text = "0";
        gb.bg = AppColors.kFalseColor;
        activePlayer = 1;
        player2.add(gb.id);
      }
      gb.enabled = false;
      int winner = checkWinner();
      if (winner == -1) {
        if (buttonsList.every((p) => p.text != "")) {
          showDialog(
              context: context,
              builder: (_) => CustomDialog("Game Tied",
                  "Press the reset button to start again.", resetGame));
        } else {
          activePlayer == 2 ? autoPlay() : null;
        }
      }
    });
  }

  void autoPlay() {
    var emptyCells = List();
    var list = List.generate(9, (i) => i + 1);
    for (var cellID in list) {
      if (!(player1.contains(cellID) || player2.contains(cellID))) {
        emptyCells.add(cellID);
      }
    }

    var r = Random();
    var randIndex = r.nextInt(emptyCells.length - 1);
    var cellID = emptyCells[randIndex];
    int i = buttonsList.indexWhere((p) => p.id == cellID);
    playGame(buttonsList[i]);
  }

  int checkWinner() {
    var winner = -1;
    if (player1.contains(1) && player1.contains(2) && player1.contains(3)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(2) && player2.contains(3)) {
      winner = 2;
    }

    // row 2
    if (player1.contains(4) && player1.contains(5) && player1.contains(6)) {
      winner = 1;
    }
    if (player2.contains(4) && player2.contains(5) && player2.contains(6)) {
      winner = 2;
    }

    // row 3
    if (player1.contains(7) && player1.contains(8) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(7) && player2.contains(8) && player2.contains(9)) {
      winner = 2;
    }

    // col 1
    if (player1.contains(1) && player1.contains(4) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(4) && player2.contains(7)) {
      winner = 2;
    }

    // col 2
    if (player1.contains(2) && player1.contains(5) && player1.contains(8)) {
      winner = 1;
    }
    if (player2.contains(2) && player2.contains(5) && player2.contains(8)) {
      winner = 2;
    }

    // col 3
    if (player1.contains(3) && player1.contains(6) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(3) && player2.contains(6) && player2.contains(9)) {
      winner = 2;
    }

    //diagonal
    if (player1.contains(1) && player1.contains(5) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(5) && player2.contains(9)) {
      winner = 2;
    }

    if (player1.contains(3) && player1.contains(5) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(3) && player2.contains(5) && player2.contains(7)) {
      winner = 2;
    }

    if (winner != -1) {
      if (winner == 1) {
        showDialog(
            context: context, builder: (_) => AssetGiffyDialog(
          image: Image.asset('assets/winner.gif'),
          title: Text('Player 1 Won',
            style: TextStyle(
                fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
          description: Text('Congratulations to Player 1',
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
          entryAnimation: EntryAnimation.DEFAULT,
          onOkButtonPressed: () {resetGame();},
        ));
      } else {
        showDialog(
            context: context, builder: (_) => AssetGiffyDialog(
          image: Image.asset('assets/winner.gif'),
          title: Text('Player 2 Won',
            style: TextStyle(
                fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
          description: Text('Congratulations to Player 2',
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
          entryAnimation: EntryAnimation.DEFAULT,
          onOkButtonPressed: () {resetGame();},
        ));
      }
    }

    return winner;
  }

  void resetGame() {
    if (Navigator.canPop(context)) Navigator.pop(context);
    setState(() {
      buttonsList = doInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: ThemeColorProvider().getThemeColors().asStream(),
    builder: (context, snapshot) {
    if (snapshot.hasData) {
    Map<String, dynamic> colors = snapshot.data;
    return Scaffold(
    appBar: AppBar(
    title: Text("Tic Tac Toe"),
    ),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Text(
        '',
        style: TextStyle(
          color: Color(colors[Themes.titleColor]),
        ),
      ),
    Expanded(
    child: GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    padding: const EdgeInsets.all(10.0),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    childAspectRatio: 1.0,
    crossAxisSpacing: 9.0,
    mainAxisSpacing: 9.0),
    itemCount: buttonsList.length,
    itemBuilder: (context, i) => SizedBox(
    width: 100.0,
    height: 100.0,
    child: RaisedButton(
    padding: const EdgeInsets.all(8.0),
    onPressed: buttonsList[i].enabled
    ? () => playGame(buttonsList[i])
        : null,
    child: Text(
    buttonsList[i].text,
    style: TextStyle(color: Colors.white, fontSize: 20.0),
    ),
    color: buttonsList[i].bg,
    disabledColor: buttonsList[i].bg,
    ),
    ),
    ),
    ),
      SizedBox(height: 10,),
      RaisedButton(
        child: Text(
          "Reset",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        color: Colors.red,
        padding: const EdgeInsets.all(20.0),
        onPressed: resetGame,
      ),
      SizedBox(height: 5,),
      RaisedButton(
        child: Text(
          "Exit",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        color: Colors.red,
        padding: const EdgeInsets.all(20.0),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Homepage()));
        },
      )

    ],
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
      );}
      return Container();
    },
    );
  }
}
