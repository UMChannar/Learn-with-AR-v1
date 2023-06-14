void add_answers(bool i) {
  answers.add(i);
}

void clear_answers() {
  answers.clear();
}

List<bool> answers = [];

List<Map> englishQuestions = [
  {
    "question": "What comes after the letter 'A'",
    "option": ["Letter 'C'", "Letter 'B'", "Letter 'Z'", "Letter 'E'"],
    "answer": "Letter 'B'",
    "note": "Letter B comes after A"
  },
  //-----------------------------------------------
  {
    "question": "What comes after the letter 'Y'",
    "option": ["Letter 'C'", "Letter 'B'", "Letter 'Z'", "Letter 'E'"],
    "answer": "Letter 'Z'",
    "note": "Letter Z comes after Y"
  },
  //-----------------------------------------------
  {
    "question": "What comes after the letter 'F'?",
    "option": ["Letter 'G'", "Letter 'E'", "Letter 'H'", "Letter 'I'"],
    "answer": "Letter 'G'",
    "note": "Letter G comes after F"
  },
  //-----------------------------------------------
  {
    "question": "What comes after the letter 'L'?",
    "option": ["Letter 'M'", "Letter 'K'", "Letter 'N'", "Letter 'O'"],
    "answer": "Letter 'M'",
    "note": "Letter M comes after L"
  },
  //-----------------------------------------------
  {
    "question": "What comes after the letter 'R'?",
    "option": ["Letter 'Q'", "Letter 'S'", "Letter 'T'", "Letter 'U'"],
    "answer": "Letter 'S'",
    "note": "Letter S comes after R"
  },
  //-----------------------------------------------
  {
    "question": "What comes after the letter 'W'?",
    "option": ["Letter 'V'", "Letter 'X'", "Letter 'Y'", "Letter 'Z'"],
    "answer": "Letter 'X'",
    "note": "Letter X comes after W"
  },
  //-----------------------------------------------
  {
    "question": "What comes after the letter 'K'?",
    "option": ["Letter 'J'", "Letter 'L'", "Letter 'M'", "Letter 'N'"],
    "answer": "Letter 'L'",
    "note": "Letter L comes after K"
  },
  //-----------------------------------------------
  {
    "question": "What comes after the letter 'D'?",
    "option": ["Letter 'C'", "Letter 'E'", "Letter 'F'", "Letter 'G'"],
    "answer": "Letter 'E'",
    "note": "Letter E comes after D"
  },
  //-----------------------------------------------
  {
    "question": "What comes after the letter 'P'?",
    "option": ["Letter 'O'", "Letter 'Q'", "Letter 'R'", "Letter 'S'"],
    "answer": "Letter 'Q'",
    "note": "Letter Q comes after P"
  },
  //-----------------------------------------------
  {
    "question": "What comes after the letter 'B'?",
    "option": ["Letter 'A'", "Letter 'C'", "Letter 'D'", "Letter 'E'"],
    "answer": "Letter 'C'",
    "note": "Letter C comes after B"
  },
  //-----------------------------------------------
];

List<Map> mathQuestions = [
  {
    "question": "How many fingers do you have on one hand?",
    "option": ["4", "5", "6", "3"],
    "answer": "5",
    "note": "You have 5 fingers on one hand"
  },
  //-----------------------------------------------
  {
    "question": "How many legs does a cat have?",
    "option": ["2", "4", "6", "8"],
    "answer": "4",
    "note": "A cat has 4 legs"
  },
  //-----------------------------------------------
  {
    "question": "How many sides does a triangle have?",
    "option": ["2", "3", "4", "5"],
    "answer": "3",
    "note": "A triangle has 3 sides"
  },
  //-----------------------------------------------
  {
    "question": "How many eyes do you have?",
    "option": ["1", "2", "3", "4"],
    "answer": "2",
    "note": "You have 2 eyes"
  },
  //-----------------------------------------------
  {
    "question": "What is 1 + 1?",
    "option": ["2", "3", "4", "5"],
    "answer": "2",
    "note": "The sum of 1 and 1 is 2"
  },
  //-----------------------------------------------
  {
    "question": "What shape has four sides of equal length?",
    "option": ["Circle", "Triangle", "Rectangle", "Square"],
    "answer": "Square",
    "note": "A square has four sides of equal length"
  },
  //-----------------------------------------------
  {
    "question": "What shape has two longer sides and two shorter sides?",
    "option": ["Triangle", "Square", "Rectangle", "Circle"],
    "answer": "Rectangle",
    "note": "A rectangle has two longer sides and two shorter sides"
  },
  //-----------------------------------------------
  {
    "question": "What shape has three sides?",
    "option": ["Square", "Rectangle", "Circle", "Triangle"],
    "answer": "Triangle",
    "note": "A triangle has three sides"
  },
  //-----------------------------------------------
  {
    "question": "What is 2 + 2?",
    "option": ["3", "4", "5", "6"],
    "answer": "4",
    "note": "The sum of 2 and 2 is 4"
  },
  //-----------------------------------------------
  {
    "question": "How many legs does a dog have?",
    "option": ["2", "4", "6", "8"],
    "answer": "4",
    "note": "A dog has 4 legs"
  },
];

List<Map<dynamic, dynamic>> urduQuestions = [
  {
    "question": "Urdu harf 'الف' ke baad kaunsa harf aata hai?",
    "option": ["حرف 'ب'", "حرف 'ج'", "حرف 'د'", "حرف 'ز'"],
    "answer": "حرف 'ب'",
    "note": "Urdu harf 'ب' الف ke baad aata hai"
  },
//-----------------------------------------------
  {
    "question": "Urdu harf 'ٹ' ke baad kaunsa harf aata hai?",
    "option": ["حرف 'ث'", "حرف 'ج'", "حرف 'چ'", "حرف 'د'"],
    "answer": "حرف 'ث'",
    "note": "Urdu harf 'ث' ٹ ke baad aata hai"
  },
//-----------------------------------------------
  {
    "question": "Urdu harf 'ک' ke baad kaunsa harf aata hai?",
    "option": ["حرف 'ل'", "حرف 'م'", "حرف 'ن'", "حرف 'و'"],
    "answer": "حرف 'ل'",
    "note": "Urdu harf 'ل' ک ke baad aata hai"
  },
//-----------------------------------------------
  {
    "question": "Urdu harf 'پ' ke baad kaunsa harf aata hai?",
    "option": ["حرف 'ت'", "حرف 'ٹ'", "حرف 'ث'", "حرف 'ج'"],
    "answer": "حرف 'ت'",
    "note": "Urdu harf 'ت' پ ke baad aata hai"
  },
//-----------------------------------------------
  {
    "question": "Urdu harf 'ہ' ke baad kaunsa harf aata hai?",
    "option": ["حرف 'و'", "حرف 'ٹ'", "حرف 'ث'", "حرف 'ی'"],
    "answer": "حرف 'و'",
    "note": "Urdu harf 'و' ہ ke baad aata hai"
  },
//-----------------------------------------------
  {
    "question": "Urdu harf 'ی' ke baad kaunsa harf aata hai?",
    "option": ["حرف 'و'", "حرف 'ہ'", "حرف 'ٹ'", "حرف 'ث'"],
    "answer": "حرف 'ہ'",
    "note": "Urdu harf 'ہ' ی ke baad aata hai"
  },
//-----------------------------------------------
  {
    "question": "Urdu harf 'چ' ke baad kaunsa harf aata hai?",
    "option": ["حرف 'ح'", "حرف 'خ'", "حرف 'د'", "حرف 'ذ'"],
    "answer": "حرف 'ح'",
    "note": "Urdu harf 'ح' چ ke baad aata hai"
  },
//-----------------------------------------------
  {
    "question": "Urdu harf 'گ' ke baad kaunsa harf aata hai?",
    "option": ["حرف 'ف'", "حرف 'ق'", "حرف 'ک'", "حرف 'ل'"],
    "answer": "حرف 'ف'",
    "note": "Urdu harf 'ف' گ ke baad aata hai"
  },
//-----------------------------------------------
  {
    "question": "Urdu harf 'ر' ke baad kaunsa harf aata hai?",
    "option": ["حرف 'ز'", "حرف 'س'", "حرف 'ش'", "حرف 'ص'"],
    "answer": "حرف 'ز'",
    "note": "Urdu harf 'ز' ر ke baad aata hai"
  },
//-----------------------------------------------
  {
    "question": "Urdu harf 'م' ke baad kaunsa harf aata hai?",
    "option": ["حرف 'ن'", "حرف 'و'", "حرف 'ہ'", "حرف 'ی'"],
    "answer": "حرف 'ن'",
    "note": "Urdu harf 'ن' م ke baad aata hai"
  },
];

List<Map> animalsQuestions = [
  {
    "question": "To which animal does this sound relate?",
    "sound": "assets/audio/animals/sounds/cat.mp3",
    "option": ["Cat", "Dog", "Cow", "Lion"],
    "answer": "Cat",
    "note": "Cats typically makes that sound"
  },
  //-----------------------------------------------
  {
    "question": "To which animal does this sound relate?",
    "sound": "assets/audio/animals/sounds/camel.mp3",
    "option": ["Cat", "Camel", "Cow", "Lion"],
    "answer": "Camel",
    "note": "Camel typically makes that sound"
  },
  //-----------------------------------------------
  {
    "question": "To which animal does this sound relate?",
    "sound": "assets/audio/animals/sounds/cow.mp3",
    "option": ["Cat", "Dog", "Cow", "Lion"],
    "answer": "Cow",
    "note": "Cow typically makes that sound"
  },
  //-----------------------------------------------
  {
    "question": "To which animal does this sound relate?",
    "sound": "assets/audio/animals/sounds/dog.mp3",
    "option": ["Cat", "Dog", "Cow", "Lion"],
    "answer": "Dog",
    "note": "Dog typically makes that sound"
  },
  //-----------------------------------------------
  {
    "question": "To which animal does this sound relate?",
    "sound": "assets/audio/animals/sounds/elephant.mp3",
    "option": ["Elephant", "Dog", "Cow", "Lion"],
    "answer": "Elephant",
    "note": "Elephant typically makes that sound"
  },
  //-----------------------------------------------
  {
    "question": "To which animal does this sound relate?",
    "sound": "assets/audio/animals/sounds/fox.mp3",
    "option": ["Cat", "Fox", "Cow", "Lion"],
    "answer": "Fox",
    "note": "Fox typically makes that sound"
  },
  //-----------------------------------------------
  {
    "question": "To which animal does this sound relate?",
    "sound": "assets/audio/animals/sounds/lion.mp3",
    "option": ["Cat", "Dog", "Cow", "Lion"],
    "answer": "Lion",
    "note": "Lion typically makes that sound"
  },
  //-----------------------------------------------
  {
    "question": "To which animal does this sound relate?",
    "sound": "assets/audio/animals/sounds/sheep.mp3",
    "option": ["Cat", "Dog", "Cow", "Sheep"],
    "answer": "Sheep",
    "note": "Sheep typically makes that sound"
  },
  //-----------------------------------------------
  {
    "question": "To which animal does this sound relate?",
    "sound": "assets/audio/animals/sounds/tiger.mp3",
    "option": ["Cat", "Dog", "Tiger", "Lion"],
    "answer": "Tiger",
    "note": "Tiger typically makes that sound"
  },
  //-----------------------------------------------
  {
    "question": "To which animal does this sound relate?",
    "sound": "assets/audio/animals/sounds/wolf.mp3",
    "option": ["Wolf", "Dog", "Cow", "Lion"],
    "answer": "Wolf",
    "note": "Wolf typically makes that sound"
  },
  //-----------------------------------------------
];

List<Map> birdsQuestions = [
  {
    "question": "To which bird does this sound relate?",
    "sound": "assets/audio/birds/sounds/crow.mp3",
    "option": ["Crow", "Sparrow", "Pigeon", "Eagle"],
    "answer": "Crow",
    "note": "Crows typically make that sound."
  },
  //-----------------------------------------------
  {
    "question": "To which bird does this sound relate?",
    "sound": "assets/audio/birds/sounds/sparrow.mp3",
    "option": ["Crow", "Sparrow", "Pigeon", "Eagle"],
    "answer": "Sparrow",
    "note": "Sparrows typically make that sound."
  },
  //-----------------------------------------------
  {
    "question": "To which bird does this sound relate?",
    "sound": "assets/audio/birds/sounds/pigeon.mp3",
    "option": ["Crow", "Sparrow", "Pigeon", "Eagle"],
    "answer": "Pigeon",
    "note": "Pigeons typically make that sound."
  },
  //-----------------------------------------------
  {
    "question": "To which bird does this sound relate?",
    "sound": "assets/audio/birds/sounds/eagle.mp3",
    "option": ["Crow", "Sparrow", "Pigeon", "Eagle"],
    "answer": "Eagle",
    "note": "Eagles typically make that sound."
  },
  //-----------------------------------------------
  {
    "question": "To which bird does this sound relate?",
    "sound": "assets/audio/birds/sounds/finch.mp3",
    "option": ["Finch", "Sparrow", "Pigeon", "Eagle"],
    "answer": "Finch",
    "note": "Finch typically make that sound."
  },
  //-----------------------------------------------
  {
    "question": "To which bird does this sound relate?",
    "sound": "assets/audio/birds/sounds/parrot.mp3",
    "option": ["Crow", "Parrot", "Pigeon", "Eagle"],
    "answer": "Parrot",
    "note": "Parrots typically make that sound."
  },
  //-----------------------------------------------
  {
    "question": "To which bird does this sound relate?",
    "sound": "assets/audio/birds/sounds/gull.mp3",
    "option": ["Seagull", "Sparrow", "Pigeon", "Owl"],
    "answer": "Seagull",
    "note": "Seagull typically make that sound."
  },
  //-----------------------------------------------
  {
    "question": "To which bird does this sound relate?",
    "sound": "assets/audio/birds/sounds/lapwing.mp3",
    "option": ["Crow", "Lapwing", "Hummingbird", "Eagle"],
    "answer": "Lapwing",
    "note": "Lapwing typically make that sound."
  },
  //-----------------------------------------------
  {
    "question": "To which bird does this sound relate?",
    "sound": "assets/audio/birds/sounds/peacock.mp3",
    "option": ["Crow", "Sparrow", "Pigeon", "Peacock"],
    "answer": "Peacock",
    "note": "Peacocks typically make that sound."
  },
  //-----------------------------------------------
  {
    "question": "To which bird does this sound relate?",
    "sound": "assets/audio/birds/sounds/mockingbird.mp3",
    "option": ["Mockingbird", "Sparrow", "Pigeon", "Flamingo"],
    "answer": "Mockingbird",
    "note": "Mockingbird typically make that sound."
  },
];
