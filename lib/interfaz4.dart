import 'package:flutter/material.dart';

class Interfaz4 extends StatefulWidget {
  const Interfaz4({super.key});
  @override
  State<Interfaz4> createState() => _Interfaz4State();
}

class _Interfaz4State extends State<Interfaz4> {
  double tamanoFuente = 38;
  bool negrita = false;
  bool cursiva = false;
  int indiceAlineacion = 1;
  Color colorTexto = Colors.blue;
  @override
  Widget build(BuildContext context) {
    Alignment alineacion = Alignment.center;
    if (indiceAlineacion == 0) {
      alineacion = Alignment.centerLeft;
    } else if (indiceAlineacion == 2) {
      alineacion = Alignment.centerRight;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elementos UI"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Container(
              width: double.infinity,
              alignment: alineacion,
              child: Text(
                "Hola Flutter",
                style: TextStyle(
                  fontSize: tamanoFuente,
                  color: colorTexto,
                  fontWeight: negrita ? FontWeight.bold : FontWeight.normal,
                  fontStyle: cursiva ? FontStyle.italic : FontStyle.normal,
                ),
              ),
            ),
            const Spacer(),
            Text(
              "fontSize: ${tamanoFuente.toInt()}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Slider(
              value: tamanoFuente,
              min: 20,
              max: 60,
              onChanged: (value) {
                setState(() {
                  tamanoFuente = value;
                });
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Text(
                      "Bold:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: negrita,
                      onChanged: (value) {
                        setState(() {
                          negrita = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Italic:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: cursiva,
                      onChanged: (value) {
                        setState(() {
                          cursiva = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: ToggleButtons(
                isSelected: [
                  indiceAlineacion == 0,
                  indiceAlineacion == 1,
                  indiceAlineacion == 2,
                ],
                onPressed: (index) {
                  setState(() {
                    indiceAlineacion = index;
                  });
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.format_align_left),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.format_align_center),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.format_align_right),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text("Color:", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      colorTexto = Colors.red;
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      colorTexto = Colors.black;
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      colorTexto = Colors.green;
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      colorTexto = Colors.blue;
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
