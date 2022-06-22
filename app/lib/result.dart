import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 26) {
      resultText =
          '无症状或轻微症状。似乎你的行为并没有对你的生活、学习和人际关系构成困扰，或者只是构成了轻微的困扰。如果你担心或想要更多信息，请考虑安排与合格的医疗保健或心理健康专业人员进行评估，以进行进一步评估和潜在的治疗。';
    } else {
      resultText =
          '根据你的测试结果，如果有一些因素导致你在生活、学习和人际关系上感到困扰，推荐多在一些人际互动中感受自己的感受、感受别人的感受，逐渐培养起对自己和他人的感知，如有需要可以向咨询师请求帮助。';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)));
  }
}
