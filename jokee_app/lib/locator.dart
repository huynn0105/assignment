import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jokee_app/data/datasources/hive_data_store.dart';
import 'package:jokee_app/data/repositories/joke_repository_impl.dart';
import 'package:jokee_app/domain/repositories/joke_reposity.dart';

import 'domain/models/joke_content.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  /// Initial Hive DB
  await Hive.initFlutter();

  /// Register Hive Adapter
  Hive.registerAdapter<JokeContent>(JokeContentAdapter());

  /// Open box
  final box = await Hive.openBox<JokeContent>("jokesBox");
  locator.registerSingleton<HiveDataStore>(
    HiveDataStore(),
  );

  locator.registerSingleton<JokeRepository>(
    JokeRepositoryImpl(locator<HiveDataStore>()),
  );

  if (box.isEmpty) {
    locator<HiveDataStore>().addJokesContent(jokes: mockData);
  }
}
