


import 'package:flutter_bloc/flutter_bloc.dart';

abstract class EmailWriterPage1 {} 

class LightOrDark extends EmailWriterPage1 {
  bool b ;
  LightOrDark(  this.b ) ;
} 

class BlocClass1 extends Bloc < EmailWriterPage1 , bool > {
  BlocClass1() : super( false ) {
    on < LightOrDark > ( 
      ( event , emit ) {
        emit ( !event.b ) ;
      } 
    ) ; 
  }
}

// sending email and calling api of ComposeEmailDataWhileSending
abstract class ComposeEmailDataWhileSending {}

class BodyOfEmail extends ComposeEmailDataWhileSending {
  List < String > email ;
  BodyOfEmail( this.email ) ;
}

class BlocEmailSending extends Bloc < ComposeEmailDataWhileSending , dynamic > {
  BlocEmailSending() : super( null ) {
    on < BodyOfEmail > ( 
      ( event , emit ) {
        emit( event.email ) ;
      } 
    ) ;
  }
}



