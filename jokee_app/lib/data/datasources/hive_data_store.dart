import 'package:hive/hive.dart';
import 'package:jokee_app/domain/models/joke_content.dart';

class HiveDataStore {
  static const boxName = "jokesBox";
  final Box<JokeContent> box = Hive.box<JokeContent>(boxName);

  Future<void> addJokesContent({required List<JokeContent> jokes}) async {
    try {
      Map<dynamic, JokeContent> data = {for (var e in jokes) e.id: e};
      await box.putAll(data);
    } catch (e) {
      print(e);
    }
  }

  List<JokeContent> getJokesContent() {
    return box.values.toList();
  }

  Future<void> updateJokeStatus(JokeContent jokeContent) async {
    if (box.containsKey(jokeContent.id)) {
      await box.put(jokeContent.id, jokeContent);
    }
  }
}
