import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_app_bloc/pages/sign_in/bloc/sign_in_bloc.dart';

class SignInController {
  final BuildContext context;

  const SignInController({
    required this.context,
});

  void handleSignIn(String type){
    try{
      if(type=='email'){
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;

        if(emailAddress.isEmpty){

        }
        if(password.isEmpty){

        }

      }

    }catch(e){
      print("error_parint:-> $e");
    }

  }

}