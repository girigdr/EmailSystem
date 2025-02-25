

import 'package:email_service/Bloc/blocCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class b1 extends StatelessWidget {
  const b1({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of < BlocClass > ( context ) ;
    return Scaffold(
      
      body: BlocBuilder < BlocClass , dynamic > ( 
        builder: ( context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( 'name : ${state[ 0 ]}' ) , 
                Text( 'name : ${state[ 1 ]}' ) , 
                Text( 'name : ${state[ 2 ]}' ) , 
                TextButton(
                  onPressed: () {
                    bloc.add( Data( [ "Akash" , '21' , 'BE in CSE' ] ) ) ;
                  } ,
                  child: Text("Click 1 ") 
                ) ,
                TextButton(
                  onPressed: () {
                    bloc.add( Data( [ 'Giridharan' , '22' , 'BE in ECE' ] ) ) ;
                  } ,
                  child: Text("Click 2 ") 
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

