class Joke {
  final int id;
  final String type;
  final String setup;
  final String punchLine;

  Joke({
      required this.id,
      required this.type,
      required this.setup,
      required this.punchLine
  });

}

final List<Joke> jokesList = [
 Joke(
     id: 1,
     type: "general",
     setup: "How do you make a tissue dance?",
     punchLine: "Damn."),
 Joke(
     id: 2,
     type: "general",
     setup: "What's forrest gump's password?",
     punchLine: "1Forrest1"),
 Joke(
     id: 3,
     type: "general",
     setup: "What do you call a belt made out of watches?",
     punchLine: "a waist of time"),
 Joke(
     id: 4,
     type: "general",
     setup: "Why can't bicycles stand on their own?",
     punchLine: "They are two tired."),
 Joke(
     id: 5,
     type: "general",
     setup: "What did the fish say when it hit the wall?",
     punchLine: "Damn."),
 Joke(
     id: 6,
     type: "general",
     setup: "Gajah apa yang lagi makan?",
     punchLine: "Gajah Madang."),
 Joke(
     id: 7,
     type: "general",
     setup: "Kenapa setelah hujan muncul pelangi?",
     punchLine: "Kalo yang muncul dajal nanti kiamat."),
];


