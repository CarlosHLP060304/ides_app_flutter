import 'package:flutter/material.dart';
import 'package:ides_app_flutter/entities/ide.dart';

class IdeInherited extends InheritedWidget {
  IdeInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  List<Ide> listIDE = [
      Ide(
        name: "Visual Studio Code",
        description: "O Visual Studio Code (VS Code) é um editor de código fonte gratuito e de código aberto desenvolvido pela Microsoft. Ele é leve, multiplataforma (funciona em Windows, macOS e Linux) e altamente personalizável, tornando-se uma escolha popular entre desenvolvedores de software.",
        image: "assets/images/vs_code.png",
        link: "https://code.visualstudio.com/"),
      Ide(
        name: "PyCharm",
        description: " O PyCharm é um IDE completo para desenvolvimento Python com recursos avançados para edição, análise e depuração de código. Ele oferece suporte a vários frameworks e bibliotecas Python, tornando-o ideal para projetos de todos os tamanhos.",
        image: "assets/images/pycharm.png",
        link: "https://www.jetbrains.com/pycharm/"),
      Ide(
        name: "WebStorm",
        description: "O WebStorm é um IDE poderoso para desenvolvimento web com suporte completo para HTML, CSS, JavaScript, TypeScript, Node.js e outras tecnologias populares. Ele oferece recursos como autocompletar código inteligente, inspeção de código e depuração avançada, tornando-o uma ferramenta essencial para desenvolvedores web",
        image: "assets/images/webstorm.png",
        link: "https://www.jetbrains.com/webstorm/"),
      Ide(
        name: "IntelliJ IDEA",
        description: "O IntelliJ IDEA é um IDE multiplataforma para desenvolvimento Java, mas também suporta outras linguagens como Kotlin, Scala, Groovy e SQL. Ele oferece recursos avançados para edição, análise, depuração e refatoração de código, tornando-o uma escolha popular entre desenvolvedores Java.",
        image: "assets/images/intellij.png",
        link: "https://www.jetbrains.com/idea/"),
      Ide(
        name: "Eclipse",
        description: "O Eclipse é um IDE multiplataforma de código aberto popular para desenvolvimento Java e outras linguagens, como C++, C# e PHP. Ele oferece uma ampla gama de recursos e plugins, tornando-o uma ferramenta versátil para diferentes tipos de projetos.",
        image: "assets/images/eclipse.png",
        link: "https://www.eclipse.org/"),
      Ide(
        name: "Sublime Text",
        description: "O Sublime Text é um editor de texto e código leve e rápido que suporta várias linguagens de programação. Ele é conhecido por sua interface minimalista e seus atalhos personalizáveis, tornando-o uma escolha popular entre desenvolvedores que desejam um editor rápido e eficiente.",
        image: "assets/images/sublime.png",
        link: "https://www.sublimetext.com/"),
        Ide(
        name: "Atom",
        description: "O Atom é um editor de código fonte gratuito e de código aberto que é altamente personalizável e extensível. Ele oferece uma ampla gama de plugins que podem adicionar novos recursos e funcionalidades, tornando-o uma ferramenta versátil para diferentes tipos de projetos.",
        image: "assets/images/atom.png",
        link: "https://atom.io/")
  ];  

  void newIde(String image,String name,String description,String link){
    listIDE.add(Ide(name: name, description: description, link: link, image: image));
  }

  static  of(BuildContext context) {
    final IdeInherited? result = context.dependOnInheritedWidgetOfExactType<IdeInherited>();
    assert(result != null, 'No  found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(IdeInherited oldWidget) {
    return oldWidget.listIDE.length != listIDE.length;
  }
}

