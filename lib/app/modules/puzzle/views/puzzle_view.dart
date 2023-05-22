import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/puzzle_controller.dart';
import 'package:flutter_jigsaw_puzzle/flutter_jigsaw_puzzle.dart';

class PuzzleView extends GetView<PuzzleController> {
  const PuzzleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final puzzleKey = GlobalKey<JigsawWidgetState>();

    return GetBuilder<PuzzleController>(
        initState: (_) {},
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.blue.shade50,
            appBar: AppBar(
              title: Text(controller.namePage),
              centerTitle: true,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JigsawPuzzle(
                  gridSize: 3,
                  image: const AssetImage('assets/images/puzzle.png'),
                  onFinished: () {
                      Get.defaultDialog(
                        title: 'Selamat yeayy 👏',
                        radius: 16,
                        content: Container(
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Lottie.network(
                                'https://res.cloudinary.com/dkkga3pht/raw/upload/v1684689538/112891-puzzle-pieces_hn4rf8.json',
                                height:150,
                                width: 150,
                                fit: BoxFit.cover
                              ),
                              const Text('Kamu bisa menyelesaikan puzzle ini dengan akurat yeay 👏👏', textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                      );
                    
                  },
                  snapSensitivity: .5,
                  puzzleKey: puzzleKey,
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () async{
                    
                      await puzzleKey.currentState!.generate();
                    },
                    child: const Text('Main Puzzle'),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
