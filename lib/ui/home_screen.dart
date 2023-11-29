
import 'package:connectivity_check_bloc/cubit/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocConsumer<InternetCubit , InternetState>(builder: ( BuildContext context,InternetState state) {
            debugPrint("state = $state");
          if(state == InternetState.gain){
            return const Text("Connected");
          }else if(state == InternetState.lost){
            return const Text("Not Connected");
          }else{
            return const Text("Loading...");
          }
          }, listener: (BuildContext context, InternetState state) {  },),
        ),
      ),
    );
  }
}
