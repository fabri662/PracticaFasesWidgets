import 'package:flutter/material.dart';

class Interfaz3 extends StatefulWidget {
  const Interfaz3({super.key});
  @override
  State<Interfaz3> createState() => _Interfaz3State();
}

class _Interfaz3State extends State<Interfaz3> {
  bool modoRow = false;
  MainAxisAlignment mainAxis = MainAxisAlignment.center;
  CrossAxisAlignment crossAxis = CrossAxisAlignment.center;
  List<Widget> elementos() {
    return [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: const Center(child: Text("A")),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: const Center(child: Text("B")),
      ),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: const Center(
          child: Text("C", style: TextStyle(color: Colors.black)),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column y Row"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const SizedBox(height: 40),

            Expanded(
              child: Center(
                child: SizedBox(
                  width: 250,
                  height: 250,
                  child: modoRow
                      ? Row(
                          mainAxisAlignment: mainAxis,
                          crossAxisAlignment: crossAxis,
                          children: elementos(),
                        )
                      : Column(
                          mainAxisAlignment: mainAxis,
                          crossAxisAlignment: crossAxis,
                          children: elementos(),
                        ),
                ),
              ),
            ),

            Row(
              children: [
                const Text(
                  "Modo:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Text("Column"),
                Switch(
                  value: modoRow,
                  onChanged: (value) {
                    setState(() {
                      modoRow = value;
                    });
                  },
                ),
                const Text("Row"),
              ],
            ),

            const SizedBox(height: 15),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "mainAxisAlignment",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mainAxis = MainAxisAlignment.start;
                    });
                  },
                  child: const Text("start"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mainAxis = MainAxisAlignment.center;
                    });
                  },
                  child: const Text("center"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mainAxis = MainAxisAlignment.end;
                    });
                  },
                  child: const Text("end"),
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "crossAxisAlignment",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      crossAxis = CrossAxisAlignment.start;
                    });
                  },
                  child: const Text("start"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      crossAxis = CrossAxisAlignment.center;
                    });
                  },
                  child: const Text("center"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      crossAxis = CrossAxisAlignment.end;
                    });
                  },
                  child: const Text("end"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
