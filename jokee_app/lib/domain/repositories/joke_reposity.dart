import 'package:jokee_app/domain/models/joke_content.dart';

abstract class JokeRepository {
  List<JokeContent> getJokesContent();
  Future<void> insertJokesContent(List<JokeContent> jokesContent);
  Future<void> updateJokeStatus(JokeContent jokeContent ,bool isFunny);
}