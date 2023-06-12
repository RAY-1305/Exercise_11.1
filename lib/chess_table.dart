import 'package:flutter/material.dart';

class ChessTable extends StatelessWidget {
  const ChessTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Chess'),
        ),
      ),
      backgroundColor: Colors.grey[600],
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 150),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8),
          children: List.generate(
            64,
            (index) {
              Color color;
              var x = index ~/ 8;
              var y = index % 8;
              (x % 2 == 0)
                  ? (color = (y % 2 == 0) ? Colors.black : Colors.white)
                  : (color = (y % 2 == 0) ? Colors.white : Colors.black);
              return Container(
                color: color,
              );
            },
          ),
        ),
      ),
    );
  }
}
