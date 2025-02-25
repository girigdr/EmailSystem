
import 'package:email_service/Bloc/blocCode.dart';
import 'package:email_service/Email/UI/EmailWriter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( h1 () );
}

class h1 extends StatelessWidget {
  const h1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ( context ) => BlocClass() ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false ,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black , brightness: Brightness.dark )
        ),
        home: Emailwriter() ,
      ),
    );
  }
}