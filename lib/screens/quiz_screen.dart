import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/quiz_data.dart';
import '../models/quiz_question.dart';
import '../providers/language_provider.dart';

class QuizScreen extends StatefulWidget {
  final String category; // 'bike' or 'car'

  const QuizScreen({super.key, required this.category});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<QuizQuestion> questions;
  int currentIndex = 0;
  int? selectedAnswer;
  int score = 0;
  bool showExplanation = false;

  @override
  void initState() {
    super.initState();
    questions = widget.category == 'bike'
        ? QuizData.getBikeQuestions()
        : QuizData.getCarQuestions();
  }

  void answerQuestion(int index) {
    if (selectedAnswer != null) return; // Already answered

    setState(() {
      selectedAnswer = index;
      showExplanation = true;
      if (index == questions[currentIndex].correctIndex) {
        score++;
      }
    });
  }

  void nextQuestion() {
    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex++;
        selectedAnswer = null;
        showExplanation = false;
      });
    } else {
      // Show final score
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text('Quiz Complete!'),
          content: Text(
            'Your Score: $score/${questions.length}\\n'
            'Percentage: ${(score / questions.length * 100).toStringAsFixed(1)}%',
            style: const TextStyle(fontSize: 18),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  currentIndex = 0;
                  selectedAnswer = null;
                  score = 0;
                  showExplanation = false;
                });
              },
              child: const Text('Retry'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text('Exit'),
            ),
          ],
        ),
      );
    }
  }

  void previousQuestion() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
        selectedAnswer = null;
        showExplanation = false;
      });
    }
  }

  Color getOptionColor(int index) {
    if (selectedAnswer == null) {
      return Colors.transparent;
    }

    final correctIndex = questions[currentIndex].correctIndex;

    if (index == correctIndex) {
      return Colors.green.withOpacity(0.3);
    } else if (index == selectedAnswer) {
      return Colors.red.withOpacity(0.3);
    }

    return Colors.transparent;
  }

  IconData? getOptionIcon(int index) {
    if (selectedAnswer == null) return null;

    final correctIndex = questions[currentIndex].correctIndex;

    if (index == correctIndex) {
      return Icons.check_circle;
    } else if (index == selectedAnswer) {
      return Icons.cancel;
    }

    return null;
  }

  Color? getOptionIconColor(int index) {
    if (selectedAnswer == null) return null;

    final correctIndex = questions[currentIndex].correctIndex;

    if (index == correctIndex) {
      return Colors.green;
    } else if (index == selectedAnswer) {
      return Colors.red;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final languageProvider = Provider.of<LanguageProvider>(context);
    final isNepali = languageProvider.isNepali;
    final currentQuestion = questions[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category == 'bike' ? 'Bike Quiz' : 'Car Quiz'),
        actions: [
          // Language Toggle Button
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              children: [
                Text(
                  isNepali ? 'नेपाली' : 'English',
                  style: const TextStyle(fontSize: 14),
                ),
                Switch(
                  value: isNepali,
                  onChanged: (value) {
                    languageProvider.toggleLanguage();
                  },
                  activeColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Progress Indicator
          Container(
            padding: const EdgeInsets.all(16),
            color:isDark ? Colors.grey[850] : Colors.blue[50],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  isNepali
                      ? 'प्रगति: ${currentIndex + 1}/${questions.length}'
                      : 'Progress: ${currentIndex + 1}/${questions.length}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  isNepali ? 'स्कोर: $score' : 'Score: $score',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                  ),
                ),
              ],
            ),
          ),

          // Progress Bar
          LinearProgressIndicator(
            value: (currentIndex + 1) / questions.length,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[700]!),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Question
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isNepali ? 'प्रश्न ${currentIndex + 1}:' : 'Question ${currentIndex + 1}:',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            isNepali ? currentQuestion.questionNp : currentQuestion.questionEn,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Options
                  ...List.generate(
                    4,
                    (index) {
                      final options = isNepali ? currentQuestion.optionsNp : currentQuestion.optionsEn;
                      final optionLabels = ['A', 'B', 'C', 'D'];

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: InkWell(
                          onTap: selectedAnswer == null ? () => answerQuestion(index) : null,
                          borderRadius: BorderRadius.circular(12),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: getOptionColor(index),
                              border: Border.all(
                                color: selectedAnswer == null
                                    ? (isDark ? Colors.grey[700]! : Colors.grey[300]!)
                                    : (index == questions[currentIndex].correctIndex
                                        ? Colors.green
                                        : (index == selectedAnswer ? Colors.red : Colors.grey[300]!)),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: isDark ? Colors.grey[800] : Colors.grey[200],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Center(
                                    child: Text(
                                      optionLabels[index],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    options[index],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                                if (getOptionIcon(index) != null)
                                  Icon(
                                    getOptionIcon(index),
                                    color: getOptionIconColor(index),
                                    size: 28,
                                  ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  // Explanation
                  if (showExplanation) ...[
                    const SizedBox(height: 20),
                    Card(
                      color: Colors.blue[50],
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.lightbulb,
                                  color: Colors.blue[700],
                                  size: 24,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  isNepali ? 'व्याख्या:' : 'Explanation:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[700],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              isNepali ? currentQuestion.explanationNp : currentQuestion.explanationEn,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),

          // Navigation Buttons
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isDark ? Colors.grey[900] : Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                if (currentIndex > 0)
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: previousQuestion,
                      icon: const Icon(Icons.arrow_back),
                      label: Text(isNepali ? 'अघिल्लो' : 'Previous'),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                if (currentIndex > 0) const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: selectedAnswer != null ? nextQuestion : null,
                    icon: Icon(currentIndex < questions.length - 1 ? Icons.arrow_forward : Icons.done),
                    label: Text(
                      currentIndex < questions.length - 1
                          ? (isNepali ? 'अर्को' : 'Next')
                          : (isNepali ? 'समाप्त' : 'Finish'),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      disabledBackgroundColor: Colors.grey[400],
                      disabledForegroundColor: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
