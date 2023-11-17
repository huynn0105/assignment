part of 'joke_bloc.dart';

abstract class JokeEvent {}



class JokeButtonPressed extends JokeEvent {
  final bool isFunny;
  final JokeContent jokeContent;
  JokeButtonPressed({
    required this.isFunny,
    required this.jokeContent,
  });
}
