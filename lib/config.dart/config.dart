class CVConfig {
  static const String name = 'محمود أحمد';
  static const String title = 'مطور تطبيقات Flutter';
  static const String about =
      'أنا مطور تطبيقات Flutter بخبرة في بناء واجهات استخدام احترافية وسلسة، أعمل على إنشاء تطبيقات مخصصة تلبي احتياجات العملاء.';

  static const List<Skill> skills = [
    Skill(name: 'Flutter', level: 0.9),
    Skill(name: 'Firebase', level: 0.75),
    Skill(name: 'UI/UX Design', level: 0.7),
  ];
}

class Skill {
  final String name;
  final double level;

  const Skill({required this.name, required this.level});
}
