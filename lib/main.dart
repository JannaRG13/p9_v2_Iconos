import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Janna Ramirez G"),
          titleTextStyle: TextStyle(color: Colors.black54, fontSize: 25),
          centerTitle: true,
          backgroundColor: Color(0xff9d6eed),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra las filas verticalmente
            children: <Widget>[
              Text(
                "     Janna Ramirez G \n Mat:22308051281287",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black54),
              ), //
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  IconWithLabel(
                      icon: Icons.star,
                      label: 'Estrella',
                      color: Colors.yellow),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.favorite,
                      label: 'Corazón',
                      color: Colors.red),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.thumb_up, label: 'Like', color: Colors.pink),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  IconWithLabel(
                      icon: Icons.home, label: 'Casa', color: Colors.blue),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.settings,
                      label: 'Ajustes',
                      color: Colors.grey),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.email, label: 'Email', color: Colors.red),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} // FIN DE CLASE MIS ICONOS

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  IconWithLabel({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color), // Icono con color personalizado
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
