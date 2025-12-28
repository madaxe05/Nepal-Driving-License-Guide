import 'package:flutter/material.dart';
import '../models/content_model.dart';
import '../screens/content_detail_screen.dart';

class SectionCard extends StatelessWidget {
  final Section section;

  const SectionCard({Key? key, required this.section}) : super(key: key);

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
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ContentDetailScreen(section: section),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  _getIconData(section.icon),
                  color: Colors.blue[700],
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      section.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Tap to read',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}