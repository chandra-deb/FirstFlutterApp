class Data {
  Map add({
    String questionText,
    int correctIndex,
    List<String> answerOptions,
  }) {
    return {
      'questionText': questionText,
      'correctIndex': correctIndex,
      'answerOptions': answerOptions,
    };
  }

  static var data = [
    {
      'questionText': 'When Bangladesh got independence?',
      'correctIndex': 4,
      'answerOptions': [
        '1970',
        '1888',
        '1222',
        '1971',
      ],
    },
    {
      'questionText': 'Bangladesh\'s independence day??',
      'correctIndex': 3,
      'answerOptions': [
        '23 March',
        '10 January',
        '26 March',
        '25 May',
      ],
    },
    {
      'questionText': 'Who is Bangladesh\'s first president?',
      'correctIndex': 2,
      'answerOptions': [
        'Mujibur Rahman',
        'Tajuddin Ahmed',
        'YeaHia Khan',
        'Syed Nazrul',
      ]
    },
    {
      'questionText': 'Who am I?',
      'correctIndex': 1,
      'answerOptions': [
        'Man',
        'Animal',
        'Deamon',
        'Nothing',
      ]
    },
    {
      'questionText': 'President of Bangladesh?',
      'correctIndex': 4,
      'answerOptions': [
        'Suvro',
        'Chandra',
        'Doreman',
        'Hasina',
      ]
    }
  ];
}
