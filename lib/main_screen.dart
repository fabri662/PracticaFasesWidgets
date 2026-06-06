import 'package:flutter/material.dart';
import 'container_screen.dart';
import 'interfaz3.dart';
import 'interfaz4.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.padding, color: Colors.teal),
            title: const Text("1. Container, Padding y SizedBox"),
            subtitle: const Text("Cajas, Bordes y Espacios"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContainerScreen(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.view_column, color: Colors.blueAccent),
            title: const Text("2. Column y Row"),
            subtitle: const Text("Alineación vertical y horizontal"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Interfaz3()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.business_center_outlined,
              color: Colors.redAccent,
            ),
            title: const Text("3. Elementos UI"),
            subtitle: const Text("Text, Icon y Botones"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Interfaz4()),
              );
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
