import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_app_bloc/pages/sign_in/bloc/sign_in_evets.dart';
import 'package:tutorial_app_bloc/pages/sign_in/bloc/sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState>{
  SignInBloc():super(const SignInState()){

    on<EmailEvent>(_emailEvent);

    on<PasswordEvent>(_passwordEvent);

  }

  void _emailEvent(EmailEvent event, Emitter<SignInState> emit){
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit){
    emit(state.copyWith(password: event.password));
  }

}