import 'package:flutter/material.dart';
import 'package:ides_app_flutter/entities/ide.dart';
import 'package:ides_app_flutter/pages/details_screen.dart';
import 'package:ides_app_flutter/pages/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     List<Ide> ides = [
      Ide(
        nome: "Visual Studio Code",
        descricao: "O Visual Studio Code (VS Code) é um editor de código fonte gratuito e de código aberto desenvolvido pela Microsoft. Ele é leve, multiplataforma (funciona em Windows, macOS e Linux) e altamente personalizável, tornando-se uma escolha popular entre desenvolvedores de software.",
        imagem: "assets/images/vs_code.png",
        link: "https://code.visualstudio.com/"),
      Ide(
        nome: "PyCharm",
        descricao: " O PyCharm é um IDE completo para desenvolvimento Python com recursos avançados para edição, análise e depuração de código. Ele oferece suporte a vários frameworks e bibliotecas Python, tornando-o ideal para projetos de todos os tamanhos.",
        imagem: "assets/images/pycharm.png",
        link: "https://www.jetbrains.com/pycharm/"),
      Ide(
        nome: "WebStorm",
        descricao: "O WebStorm é um IDE poderoso para desenvolvimento web com suporte completo para HTML, CSS, JavaScript, TypeScript, Node.js e outras tecnologias populares. Ele oferece recursos como autocompletar código inteligente, inspeção de código e depuração avançada, tornando-o uma ferramenta essencial para desenvolvedores web",
        imagem: "assets/images/webstorm.png",
        link: "https://www.jetbrains.com/webstorm/"),
      Ide(
        nome: "IntelliJ IDEA",
        descricao: "O IntelliJ IDEA é um IDE multiplataforma para desenvolvimento Java, mas também suporta outras linguagens como Kotlin, Scala, Groovy e SQL. Ele oferece recursos avançados para edição, análise, depuração e refatoração de código, tornando-o uma escolha popular entre desenvolvedores Java.",
        imagem: "assets/images/intellij.png",
        link: " https://www.jetbrains.com/idea/"),
      Ide(
        nome: "Eclipse",
        descricao: "O Eclipse é um IDE multiplataforma de código aberto popular para desenvolvimento Java e outras linguagens, como C++, C# e PHP. Ele oferece uma ampla gama de recursos e plugins, tornando-o uma ferramenta versátil para diferentes tipos de projetos.",
        imagem: "assets/images/eclipse.png",
        link: "https://www.eclipse.org/"),
      Ide(
        nome: "Sublime Text",
        descricao: "O Sublime Text é um editor de texto e código leve e rápido que suporta várias linguagens de programação. Ele é conhecido por sua interface minimalista e seus atalhos personalizáveis, tornando-o uma escolha popular entre desenvolvedores que desejam um editor rápido e eficiente.",
        imagem: "assets/images/sublime.png",
        link: "https://www.sublimetext.com/"),
        Ide(
        nome: "Atom",
        descricao: "O Atom é um editor de código fonte gratuito e de código aberto que é altamente personalizável e extensível. Ele oferece uma ampla gama de plugins que podem adicionar novos recursos e funcionalidades, tornando-o uma ferramenta versátil para diferentes tipos de projetos.",
        imagem: "assets/images/atom.png",
        link: "https://atom.io/")
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/':(context) => HomeScreen(ides: ides),
        'details':(context){                                 
            final args = ModalRoute.of(context)!.settings.arguments as Map;
            return DetailsScreen(ide: args,);                               
            }
      },
    );
  }
}
