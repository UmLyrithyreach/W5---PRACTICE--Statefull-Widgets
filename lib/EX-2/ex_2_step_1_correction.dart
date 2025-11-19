import 'package:flutter/material.dart';

class Ex2 extends StatelessWidget {
  const Ex2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: const CardContainer(),
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(10),
          child: CardWidget(),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: CardWidget(),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: CardWidget(),
        ),
      ],
    );
  }
}

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidget();
}

class _CardWidget extends State<CardWidget> {
  bool isFavorite = false;

  void favouriteButton() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'title',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 10.0),
              Text('description'),
            ],
          ),
        ),
        InkWell(
          onTap: favouriteButton,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.favorite,
                size: 34,
                color: isFavorite ? Colors.red : Colors.white,
              ),
              Icon(
                Icons.favorite_border,
                size: 36,
                color: Color.fromRGBO(0,0,0,0.4),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
