import 'package:anime_portal/src/app/view/app.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final applicationsDirectory = await getApplicationDocumentsDirectory();
  final storage = await HydratedStorage.build(
    storageDirectory: applicationsDirectory,
  );

  HydratedBlocOverrides.runZoned(
    () => runApp(const App()),
    storage: storage,
  );
}
