import 'package:flutter/material.dart';

class SportsApp {
  final String Player;
  final String Team;
  final String Number;
  final String Position;
  final int Pts;
  final int Ast;
  final int Reb;

  SportsApp({
    @required this.Player,
    @required this.Team,
    @required this.Number,
    @required this.Position,
    @required this.Pts,
    @required this.Ast,
    @required this.Reb,
  });
}

final locationList = [
  SportsApp(
    Player: 'Lebron James',
    Team: 'Los Angeles Lakers',
    Number: '#23',
    Position: 'SF',
    Pts: 25,
    Ast: 8,
   Reb: 8,
  ),
 SportsApp(
    Player: 'Andre Drummond',
    Team: 'Los Angeles Lakers',
    Number: '#0',
    Position: 'C',
    Pts: 10,
    Ast: 2,
    Reb: 10,
  ),
  SportsApp(
    Player: 'Kyle Kuzma',
    Team: 'Los Angeles Lakers',
    Number: '#0',
    Position: 'SG',
    Pts: 13,
    Ast: 2,
    Reb: 7,
  ),
  SportsApp(
    Player: 'Anthony Davis',
    Team: 'Los Angeles Lakers',
    Number: '#3',
    Position: 'F/C',
    Pts: 23,
    Ast: 3,
    Reb: 9,
  ),
];