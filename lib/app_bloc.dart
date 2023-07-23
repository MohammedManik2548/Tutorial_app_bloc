import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_app_bloc/app_event.dart';
import 'package:tutorial_app_bloc/app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState>{
  AppBloc():super(InitState());
}