

import 'package:email_service/Email/Data/ComposeEmailData.dart';
import 'package:email_service/Email/bloc/Bloc_Class_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Emailwriter extends StatelessWidget {
  const Emailwriter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocClass1() ,
      child: MaterialApp_of_EmailWritter () 
    );
  }
}

class MaterialApp_of_EmailWritter extends StatelessWidget {
  const MaterialApp_of_EmailWritter({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic bloc = BlocProvider.of < BlocClass1 > ( context ) ;
    return  BlocBuilder < BlocClass1 , bool > (
      builder: ( context , brightness ) {
        return MaterialApp(
          debugShowCheckedModeBanner: false ,
          theme: ThemeData(
            scaffoldBackgroundColor: brightness ? Colors.black : Colors.white   ,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black , brightness: brightness ? Brightness.dark : Brightness.light )
          ),
          home: Further_Part_Of_Emailwriter() ,
        ) ;
      },
    );
  }
}


class Further_Part_Of_Emailwriter extends StatefulWidget {
  const Further_Part_Of_Emailwriter({super.key});

  @override
  State<Further_Part_Of_Emailwriter> createState() => _Further_Part_Of_EmailwriterState();
}

class _Further_Part_Of_EmailwriterState extends State<Further_Part_Of_Emailwriter> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of < BlocClass1 > ( context ) ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 80, 77, 76),
        actions: [

          //bloc added later
          IconButton(
            onPressed: () {
              
            },
            icon: Icon( Icons.send_rounded ),
          ) , 
          //bloc added later
          IconButton(
            onPressed: () {
              
            },
            icon: Icon( Icons.file_present_rounded ),
          ) , 


          BlocBuilder < BlocClass1 , bool > (
            builder: ( context , brightness ) {
              return IconButton(
                onPressed: () {
                  bloc.add( LightOrDark( brightness ) ) ;
                },
                icon: brightness ? Icon( Icons.light_mode_sharp ) : Icon( Icons.dark_mode_sharp  ) ,
              ) ;
            }
          ) , 

          
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                
                // ---- for From Email Address 
                textFeildOfEmails( '   FROM     ' , fromEmail  ) ,
                BlocBuilder < BlocClass1 , bool > (
                  builder: ( context , brightness ) {
                    return Divider( 
                      height: 0 ,
                      thickness: 0.8 ,
                      color: brightness ? const Color.fromARGB(255, 165, 165, 165) : const Color.fromARGB(255, 0, 0, 0) ,
                    ) ; 
                  }
                ),
                SizedBox( height: 20 ,),
                
          
          
                // ---- for To Email Address 
                textFeildOfEmails( '      TO       ' , toEmail   ) ,
                BlocBuilder < BlocClass1 , bool > (
                  builder: ( context , brightness ) {
                    return Divider( 
                      height: 0 ,
                      thickness: 0.8 ,
                      color: brightness ? const Color.fromARGB(255, 165, 165, 165) : const Color.fromARGB(255, 0, 0, 0) ,
                    ) ; 
                  }
                ),
                SizedBox( height: 20 ,),
          
          
          
                // ---- for the Subject  
                textFeildOfEmails( ' SUBJECT ' , subject  ) ,
                BlocBuilder < BlocClass1 , bool > (
                  builder: ( context , brightness ) {
                    return Divider( 
                      height: 0 ,
                      thickness: 0.8 ,
                      color: brightness ? const Color.fromARGB(255, 165, 165, 165) : const Color.fromARGB(255, 0, 0, 0) ,
                    ) ; 
                  }
                ),
                SizedBox( height: 30 ,),
          
          
                // body of the email 
                BodyOfEmail ( ' SUBJECT ' , composeEmail , null ) ,
                
          
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row textFeildOfEmails( String name , TextEditingController email ) {
    return Row(
      children: [
        SizedBox( width: 20 ,),
        Text( name ) ,
        SizedBox( width: 30 ,),
        Expanded(
          child: TextField(
            controller: email ,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent), // Transparent border
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent), // Transparent border when focused
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent), // Transparent when disabled
              ),
            ),

          ),
        ) ,
        SizedBox( width: 20 ,),
      ],
    );
  }

  dynamic BodyOfEmail( String name , TextEditingController email , dynamic lines ) {
    return TextField(
      maxLines:  lines ,
      controller: email ,
      decoration: InputDecoration(
        hintText: "COMPOSE EMAIL",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent), // Transparent border
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent), // Transparent border when focused
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent), // Transparent when disabled
        ),
      ),
    );
  }
}