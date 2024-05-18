import 'package:flutter/material.dart';
import 'package:ides_app_flutter/data/ide_inherited.dart';

import '../entities/ide.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Ide> ides = IdeInherited.of(context).listIDE;
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Lista de IDE's"),
        backgroundColor: Colors.blueAccent,
        ),
      body: ListView.builder(
        itemCount: ides.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(ides[index].name),
              subtitle: Text(ides[index].description,overflow: TextOverflow.ellipsis,),
              leading: CircleAvatar(backgroundImage: AssetImage(ides[index].image),),
              onTap: () { 
                Navigator.pushNamed(
                context, 'details',
                arguments: {
                  'name': ides[index].name,
                  'description': ides[index].description,
                  'link':ides[index].link,
                  'image':ides[index].image
                  });
                },
          );
        },
      ),
     floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.pushNamed(context,'form');},
        child: const Icon(Icons.add),
      ), 
    );
  }
}