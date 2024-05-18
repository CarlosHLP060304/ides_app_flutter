import 'package:flutter/material.dart';
import 'package:ides_app_flutter/data/ide_inherited.dart';
import 'package:ides_app_flutter/pages/details_screen.dart';
import 'package:ides_app_flutter/pages/form_screen.dart';
import 'package:ides_app_flutter/pages/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'IdeSearch',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/':(context) => IdeInherited(child: const HomeScreen()),
        'details':(context){                                 
            final args = ModalRoute.of(context)!.settings.arguments as Map;
            return DetailsScreen(ide: args,);                               
            },
        'form':(context)=>const FormScreen()
      },
    
    );
  }
}
