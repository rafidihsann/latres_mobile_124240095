class Character {
  final String fullName;
  final String nickname;
  final String hogwartsHouse;
  final String interpretedBy;
  final List<String> children;
  final String image;
  final String birthdate;
  final int index;

  Character({
    required this.fullName,
    required this.nickname,
    required this.hogwartsHouse,
    required this.interpretedBy,
    required this.children,
    required this.image,
    required this.birthdate,
    required this.index,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      fullName: json['fullName'] ?? '',
      nickname: json['nickname'] ?? '',
      hogwartsHouse: json['hogwartsHouse'] ?? '',
      interpretedBy: json['interpretedBy'] ?? '',
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
      image: json['image'] ?? '',
      birthdate: json['birthdate'] ?? '',
      index: json['index'] ?? 0,
    );
  }
}

