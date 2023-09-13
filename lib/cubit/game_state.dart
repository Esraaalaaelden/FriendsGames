part of 'game_cubit.dart';

@immutable
abstract class GameState {}

class GameInitial extends GameState {}
// team points
class FirstTeamPointPlus extends GameState {}
class SecondTeamPointPlus extends GameState {}

// question states
class GetRandomQuestionState extends GameState {}

class StartCountdownTimerState extends GameState {}
class CountingDownTimerState extends GameState {}
class StopCountdownTimerState extends GameState {}


