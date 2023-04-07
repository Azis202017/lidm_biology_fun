import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/puzzle_controller.dart';
import 'package:flutter_jigsaw_puzzle/flutter_jigsaw_puzzle.dart';

class PuzzleView extends GetView<PuzzleController> {
  const PuzzleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final puzzleKey = GlobalKey<JigsawWidgetState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('PuzzleView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await puzzleKey.currentState!.generate();
            },
            child: const Text('Generate'),
          ),
          JigsawPuzzle(
            gridSize: 3,
            image: const AssetImage(
                'assets/images/puzzle.png'),
            onFinished: () {
              // ignore: avoid_print
              print('finished!');
            },
            snapSensitivity: .5, 
            puzzleKey: puzzleKey, 
             
          )
        ],
      ),
    );
  }
}
