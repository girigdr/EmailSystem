
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class MapDataToPages {}


class Data extends MapDataToPages {
  dynamic map ;
  Data( this.map ) ;
} 


class BlocClass extends Bloc< MapDataToPages , dynamic > {
  BlocClass() : super( [ 'name' , 'age' , 'standard' ] ) {
    on < Data > ( (event, emit) => emit ( event.map ) ) ;
  } 
  
}
