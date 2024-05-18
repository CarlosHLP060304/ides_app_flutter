import 'package:flutter/material.dart';
import 'package:ides_app_flutter/data/ide_inherited.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>(); 
  
  @override
  Widget build(BuildContext context) {
    TextEditingController linkImageController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController linkMoreInformationController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text("Adicionar IDE"),),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                      if(value!.isEmpty){
                        return 'Insira o link da imagem da IDE';
                      }
                      return null;
                  },
                  controller: linkImageController,
                  decoration: const InputDecoration(label: Text("Link da imagem da IDE"),
                  hintText: "https://klauslaube.com.br/static/deae48b6359be4de0f9a421308784e3f/atom-editor-logo.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Insira o nome da IDE";
                    }
                    return null;
                  },
                  controller: nameController,
                  decoration: const InputDecoration(label: Text("Nome da IDE"),hintText: "Atom"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return "O campo de descrição não pode estar vazio";
                    }
                    return null;
                  },
                  controller: descriptionController,
                  decoration: const InputDecoration(label: Text("Descrição da IDE"),hintText: "O Atom é um editor de código fonte gratuito e de código aberto que é altamente personalizável e extensível. Ele oferece uma ampla gama de plugins que podem adicionar novos recursos e funcionalidades, tornando-o uma ferramenta versátil para diferentes tipos de projetos."),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Insira o link para ver mais detalhes sobre a IDE";
                    }
                    return null;
                  },
                  controller: linkMoreInformationController,
                  decoration: const InputDecoration(label: Text("Link para ver mais detalhes sobre a IDE"),hintText: "https://atom.io/"),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                 if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("IDE adicionada!")));
                    IdeInherited.of(context).newTask();
                    Navigator.pop(context);
                 }
              }, child: const Text("Adicionar"))
            ],
          )),
        ),
      ),
    );
  }
}
