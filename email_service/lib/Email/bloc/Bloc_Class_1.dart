


import 'package:flutter_bloc/flutter_bloc.dart';

abstract class EmailWriterPage1 {} 

class LightOrDark extends EmailWriterPage1 {
  bool b ;
  LightOrDark(  this.b ) ;
} 

class BlocClass1 extends Bloc < EmailWriterPage1 , bool > {
  BlocClass1() : super( false ) {
    on < LightOrDark > ( ( event , emit ) {
      emit ( !event.b ) ;
    } ) ; 
  }
}