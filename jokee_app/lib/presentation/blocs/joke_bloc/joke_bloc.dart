import 'package:bloc/bloc.dart';
import 'package:jokee_app/domain/models/joke_content.dart';
import 'package:jokee_app/domain/repositories/joke_reposity.dart';
import 'package:jokee_app/locator.dart';

part 'joke_event.dart';
part 'joke_state.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  final _jokeRepository = locator<JokeRepository>();

  JokeBloc()
      : super(JokeLoadSuccess(
            jokesContent: locator<JokeRepository>().getJokesContent())) {
    on<JokeButtonPressed>((event, emit) async {
      emit(JokeLoading());
      await _jokeRepository.updateJokeStatus(event.jokeContent, event.isFunny);
      emit(JokeLoadSuccess(jokesContent: _jokeRepository.getJokesContent()));
    });
  }
}
