import 'package:jokee_app/data/datasources/hive_data_store.dart';
import 'package:jokee_app/domain/models/joke_content.dart';
import 'package:jokee_app/domain/repositories/joke_reposity.dart';

class JokeRepositoryImpl implements JokeRepository{

    final HiveDataStore _hiveDataStore;
   JokeRepositoryImpl(this._hiveDataStore);


  @override
  List<JokeContent> getJokesContent() {
    return _hiveDataStore.getJokesContent().where((element) => element.isFunny == null).toList();
  }

  @override
  Future<void> insertJokesContent(List<JokeContent> jokesContent) async{
   await _hiveDataStore.addJokesContent(jokes: jokesContent);
  }
  
  @override
  Future<void> updateJokeStatus(JokeContent jokeContent, bool isFunny) async {
    await _hiveDataStore.updateJokeStatus(jokeContent.copyWith(isFunny: isFunny));
  }
  

  
}