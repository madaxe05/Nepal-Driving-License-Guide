class Category {
  final String id;
  final String name;
  final String icon;
  final List<Section> sections;

  Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.sections,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      sections: (json['sections'] as List)
          .map((s) => Section.fromJson(s))
          .toList(),
    );
  }
}

class Section {
  final String id;
  final String title;
  final String icon;
  final String content;

  Section({
    required this.id,
    required this.title,
    required this.icon,
    required this.content,
  });

  factory Section.fromJson(Map<String, dynamic> json) {
    return Section(
      id: json['id'],
      title: json['title'],
      icon: json['icon'],
      content: json['content'],
    );
  }
}