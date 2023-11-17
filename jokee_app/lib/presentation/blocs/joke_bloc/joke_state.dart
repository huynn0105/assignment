part of 'joke_bloc.dart';

sealed class JokeState {}


class JokeLoading extends JokeState {}

class JokeLoadSuccess extends JokeState {
  final List<JokeContent> jokesContent;
  JokeLoadSuccess({required this.jokesContent});
}

