class NameOfAllah {
  final int index;
  final String name;
  final String meaning;
  final String banglaName;
  final String banglaMeaning;
  final String arabicName;
  final String arabicMeaning;
  final String hindiName;
  final String hindiMeaning;
  final Description description;

  NameOfAllah({
    required this.index,
    required this.name,
    required this.meaning,
    required this.banglaName,
    required this.banglaMeaning,
    required this.arabicName,
    required this.arabicMeaning,
    required this.hindiName,
    required this.hindiMeaning,
    required this.description,
  });

  factory NameOfAllah.fromJson(Map<String, dynamic> json) {
    return NameOfAllah(
      index: json['index'],
      name: json['name'],
      meaning: json['meaning'],
      banglaName: json['banglaName'],
      banglaMeaning: json['banglaMeaning'],
      arabicName: json['arabicName'],
      arabicMeaning: json['arabicMeaning'],
      hindiName: json['hindiName'],
      hindiMeaning: json['hindiMeaning'],
      description: Description.fromJson(json['description']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'name': name,
      'meaning': meaning,
      'banglaName': banglaName,
      'banglaMeaning': banglaMeaning,
      'arabicName': arabicName,
      'arabicMeaning': arabicMeaning,
      'hindiName': hindiName,
      'hindiMeaning': hindiMeaning,
      'description': description.toJson(),
    };
  }
}

class Description {
  final String english;
  final String bangla;
  final String arabic;
  final String hindi;

  Description({
    required this.english,
    required this.bangla,
    required this.arabic,
    required this.hindi,
  });

  factory Description.fromJson(Map<String, dynamic> json) {
    return Description(
      english: json['english'],
      bangla: json['bangla'],
      arabic: json['arabic'],
      hindi: json['hindi'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'english': english,
      'bangla': bangla,
      'arabic': arabic,
      'hindi': hindi,
    };
  }
}
