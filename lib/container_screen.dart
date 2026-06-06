import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  double width = 150;
  double height = 150;
  double borderRadius = 20;
  Color color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SizedBox(
                width: width,
                height: height,
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  child: const Center(child: Text("Container")),
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ancho (Width): ${width.toInt()} px"),
                  Slider(
                    value: width,
                    min: 0,
                    max: 250,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        width = value;
                      });
                    },
                  ),

                  Text("Alto (Height): ${height.toInt()} px"),
                  Slider(
                    value: height,
                    min: 0,
                    max: 250,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),

                  Text("BorderRadius: ${borderRadius.toInt()} px"),
                  Slider(
                    value: borderRadius,
                    min: 0,
                    max: 150,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        borderRadius = value;
                      });
                    },
                  ),

                  const Text("Color:"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.circle, size: 50),
                        color: Colors.red,
                        onPressed: () {
                          setState(() {
                            color = Colors.red;
                          });
                        },
                      ),

                      IconButton(
                        icon: const Icon(Icons.circle, size: 50),
                        color: Colors.amber,
                        onPressed: () {
                          setState(() {
                            color = Colors.amber;
                          });
                        },
                      ),

                      IconButton(
                        icon: const Icon(Icons.circle, size: 50),
                        color: Colors.green,
                        onPressed: () {
                          setState(() {
                            color = Colors.green;
                          });
                        },
                      ),

                      IconButton(
                        icon: const Icon(Icons.circle, size: 50),
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            color = Colors.blue;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
