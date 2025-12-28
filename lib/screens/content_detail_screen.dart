import 'package:flutter/material.dart';
import '../models/content_model.dart';

class ContentDetailScreen extends StatelessWidget {
  final Section section;

  const ContentDetailScreen({Key? key, required this.section})
    : super(key: key);

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'description':
        return Icons.description;
      case 'check_circle':
        return Icons.check_circle;
      case 'assignment':
        return Icons.assignment;
      case 'quiz':
        return Icons.quiz;
      case 'directions_bike':
        return Icons.directions_bike;
      case 'directions_car':
        return Icons.directions_car;
      case 'traffic':
        return Icons.traffic;
      default:
        return Icons.article;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(section.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue[300]!, Colors.blue[500]!],
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    _getIconData(section.icon),
                    size: 60,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    section.title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 0,
                color: Colors.grey[50],
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    section.content,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
