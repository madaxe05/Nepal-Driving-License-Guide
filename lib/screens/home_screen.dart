import 'package:flutter/material.dart';
import 'dart:convert';
import '../models/content_model.dart';
import '../data/content_data.dart';
import '../widgets/category_card.dart';
import 'about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Category> categories = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    try {
      final Map<String, dynamic> jsonData = json.decode(ContentData.jsonContent);
      setState(() {
        categories = (jsonData['categories'] as List)
            .map((c) => Category.fromJson(c))
            .toList();
      });
    } catch (e) {
      debugPrint('Error loading data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nepal License Guide'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: categories.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome! 👋',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Choose your license category to get started',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                    const SizedBox(height: 24),
                    ...categories.map((category) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: CategoryCard(category: category),
                        )),
                    const SizedBox(height: 16),
                    _buildInfoCard(),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildInfoCard() {
    return Card(
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.lightbulb_outline, color: Colors.blue[700], size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pro Tip',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Read all sections carefully before appearing for your exams. This app works completely offline!',
                    style: TextStyle(color: Colors.blue[800], fontSize: 14),
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