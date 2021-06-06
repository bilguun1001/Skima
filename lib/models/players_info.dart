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
    Number: '#2',
    Position: 'C',
    Pts: 15,
    Ast: 2,
    Reb: 12,
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
    Pts: 21,
    Ast: 3,
    Reb: 8,
  ),
  SportsApp(
    Player: 'Alex Caruso',
    Team: 'Los Angeles Lakers',
    Number: '#4',
    Position: 'PG',
    Pts: 6,
    Ast: 3,
    Reb: 3,
  ),
  SportsApp(
    Player: 'Paul George',
    Team: 'Los Angeles Clippers',
    Number: '#13',
    Position: 'Q',
    Pts: 24,
    Ast: 5,
    Reb: 6,
  ),
  SportsApp(
    Player: 'Kyrie Irving',
    Team: 'Brooklyn Nets',
    Number: '#11',
    Position: 'W',
    Pts: 26,
    Ast: 6,
    Reb: 4,
  ),
  SportsApp(
    Player: 'Luka Doncic',
    Team: 'Dallas Mavericks',
    Number: '#77',
    Position: 'E',
    Pts: 27,
    Ast: 8,
    Reb: 8,
  ),
  SportsApp(
    Player: 'Chris Paul',
    Team: 'Phoenix Suns',
    Number: '#3',
    Position: 'R',
    Pts: 16,
    Ast: 9,
    Reb: 4,
  ),
  SportsApp(
    Player: 'Carmelo Anthony',
    Team: 'Portland Trail Blazers',
    Number: '#00',
    Position: 'T',
    Pts: 13,
    Ast: 1,
    Reb: 3,
  ),
];