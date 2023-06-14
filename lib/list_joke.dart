import 'joke.dart';
import 'package:flutter/material.dart';

class ListJoke extends StatelessWidget {
  const ListJoke({super.key, required this.chooseJokeCallBack, this.jokeChoices});
  final ValueChanged<Joke> chooseJokeCallBack;
  final Joke? jokeChoices;
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: jokesList.map((joke) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: ListTile(
              title: Text(joke.setup),
              onTap: () {
                chooseJokeCallBack(joke);
              },
              selected: jokeChoices == joke,
              selectedColor: Colors.red,
            ),
          );
        }).toList(),
      );
  }
}