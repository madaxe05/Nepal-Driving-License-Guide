import 'package:flutter/material.dart';
import '../models/content_model.dart';
import '../widgets/section_card.dart';

class CategoryScreen extends StatelessWidget {
  final Category category;

  const CategoryScreen({Key? key, required this.category}) : super(key: key);

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'two_wheeler':
        return Icons.two_wheeler;
      case 'directions_car':
        return Icons.directions_car;
      default:
        return Icons.help_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue[400]!, Colors.blue[600]!],
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    _getIconData(category.icon),
                    size: 80,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    category.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${category.sections.length} Sections Available',
                    style: const TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Study Topics',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...category.sections.map(
                    (section) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: SectionCard(section: section),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
