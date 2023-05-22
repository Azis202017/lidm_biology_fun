import 'package:biology_fun/app/shared/theme/font.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';

class NextButton extends StatelessWidget {
  const NextButton(
      {super.key, this.nextQuestion, this.backQuestion, this.index});
  final int? index;
  final VoidCallback? nextQuestion;
  final VoidCallback? backQuestion;

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment:
          index! > 0 ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
      children: [
        index! > 0
            ? GestureDetector(
                onTap: backQuestion,
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child:  Center(
                    child: Text(
                      'Kembali',
                      textAlign: TextAlign.center,
                      style: buttonLinkXSBold
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        GestureDetector(
          onTap: nextQuestion,
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.symmetric(
            ),
            child: Center(
              child: Text(
                'Selanjutnya',
                textAlign: TextAlign.center,
                style: buttonLinkXSBold.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
