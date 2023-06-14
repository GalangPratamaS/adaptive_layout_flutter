import 'package:flutter/material.dart';
import 'package:adaptive_layout/joke.dart';

class DetailJokePage extends StatelessWidget {
  final Joke? joke;
  const DetailJokePage({super.key, this.joke});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(joke?.type ?? "Joke Belum dipilih"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(8),
            child: Text(joke?.setup ?? "Joke belum dipiilih"),
            ),
            Padding(padding: const EdgeInsets.all(8),
            child: Text(joke?.punchLine ?? 'Tidak ada punchLine'),
            ),
          ],
        ),
      ),
    );
  }
}