import 'package:adaptive_layout/detail_joke_page.dart';
import 'package:adaptive_layout/joke.dart';
import 'package:adaptive_layout/list_joke.dart';
import 'package:flutter/material.dart';

class AdaptivePage extends StatefulWidget {
  const AdaptivePage({super.key});

  @override
  State<AdaptivePage> createState() => _AdaptivePageState();
}

class _AdaptivePageState extends State<AdaptivePage> {
  Joke? jokeChoices;
  @override
  Widget build(BuildContext context) {
    late Widget content;
    var screenSize = MediaQuery.of(context).size.shortestSide;
    var screenOrientation = MediaQuery.of(context).orientation;
    if (screenOrientation == Orientation.portrait && screenSize < 600) {
      // Mode hp
      content = buildNoTablet();
    } else {
      // Mode tablet
      content = buildTablet();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Joke App"),
      ),
      body: content,
    );
  }

  Widget buildNoTablet() {
    return ListJoke(
      chooseJokeCallBack: (choices) {
        final route = MaterialPageRoute(
          builder: (context) => DetailJokePage(
            joke: choices,
          ),
        );
        Navigator.push(context, route);
      },
    );
  }

  Widget buildTablet() {
    return Row(
      children: [
        // LIST
        Flexible(
          child: Material(
            elevation: 16,
            child: ListJoke(
              chooseJokeCallBack: (joke) {
                setState(() {
                  jokeChoices = joke;
                });
              },
              jokeChoices: jokeChoices,
            ),
          ),
        ),
        // DETAIL
         Flexible(
          child: DetailJokePage(
            joke: jokeChoices,
          ),
        ),
      ],
    );
  }
}
