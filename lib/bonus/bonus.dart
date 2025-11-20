import 'package:flutter/material.dart';

class BonusEx extends StatelessWidget {
  const BonusEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ScoreCard(
              title: 'My Score in Flutter',
              scoreIndex: 5,
              maxScore: 10,
              minScore: 0,
            ),
            ScoreCard(
              title: 'My Score in Dart',
              scoreIndex: 4,
              maxScore: 10,
              minScore: 0,
            ),
            ScoreCard(
              title: 'My Score in C++',
              scoreIndex: 2,
              maxScore: 10,
              minScore: 0,
            ),
          ],
        ),
      ),
    );
  }
}

class ScoreCard extends StatefulWidget {
  final String title;
  final int scoreIndex;
  final int maxScore;
  final int minScore;
  const ScoreCard({
    super.key,
    required this.title,
    required this.scoreIndex,
    required this.maxScore,
    required this.minScore,
  });

  int get getScore => scoreIndex;

  @override
  State<ScoreCard> createState() => _ScoreCard();
}

class _ScoreCard extends State<ScoreCard> {
  late int score;

  @override
  void initState() {
    super.initState();
    score = widget.getScore;
  }

  void increase() {
    if (score < widget.maxScore) {
      setState(() {
        score++;
      });
    }
  }

  void decrease() {
    if (score > widget.minScore) {
      setState(() {
        score--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: decrease, icon: const Icon(Icons.remove)),
              SizedBox(width: 50),
              IconButton(onPressed: increase, icon: const Icon(Icons.add)),
            ],
          ),

          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                height: 30,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 30,
                width: 300 * (score / widget.maxScore),
                decoration: BoxDecoration(
                  color: score / widget.maxScore < 0.33
                      ? Colors.greenAccent
                      : score / widget.maxScore < 0.5
                      ? Colors.lightGreen
                      : Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
