class Question{
  int? questionId = 2;
  Map<String, String>? question ={
    "word": "absorb",
    "question": "以下の単語の意味を答えなさい。",
    "audio": "https://d2woaau63128nu.cloudfront.net/absorb.mp3"
  };
  List<Map<String, dynamic>>? answer = [
    {"text": "吸収する", "correct": false},
    {"text": "ホゲホゲ", "correct": true},
    {"text": "もげもげ", "correct": false},
  ];
}