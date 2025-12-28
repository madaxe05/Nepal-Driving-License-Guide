import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Icon(Icons.drive_eta, size: 80, color: Colors.blue[600]),
                  const SizedBox(height: 16),
                  const Text(
                    'Nepal License Guide',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Version 1.0.0',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'About This App',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Nepal License Guide is a comprehensive offline app designed to help you prepare for your driving license written exam in Nepal. This app provides detailed information about the license application process, required documents, exam formats, and essential traffic rules.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 24),
            const Text(
              'Features',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildFeatureItem(Icons.offline_bolt, 'Works completely offline'),
            _buildFeatureItem(
              Icons.category,
              'Separate sections for Bike and Car licenses',
            ),
            _buildFeatureItem(Icons.article, 'Detailed reading materials'),
            _buildFeatureItem(Icons.speed, 'Quick and easy navigation'),
            _buildFeatureItem(Icons.dark_mode, 'Dark mode support'),
            const SizedBox(height: 24),
            Card(
              color: Colors.red[50],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.warning_amber, color: Colors.red[700]),
                        const SizedBox(width: 8),
                        const Text(
                          'Disclaimer',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'This app is NOT affiliated with the Government of Nepal or any official transport department. The information provided is for educational purposes only. Please verify all details with your local Transport Management Office before applying.',
                      style: TextStyle(fontSize: 14, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Legal',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildLegalCard(
              context,
              Icons.privacy_tip_outlined,
              'Privacy Policy',
              'We respect your privacy. This app works completely offline and does not collect any personal data.',
              'View Full Privacy Policy',
            ),
            const SizedBox(height: 12),
            _buildLegalCard(
              context,
              Icons.description_outlined,
              'Terms of Service',
              'This app is for educational purposes only. Please read our terms of service for more information.',
              'View Terms of Service',
            ),
            const SizedBox(height: 12),
            _buildLegalCard(
              context,
              Icons.code_outlined,
              'Open Source',
              'This app is open source under the MIT License. Contributions are welcome!',
              'View License',
            ),
            const SizedBox(height: 24),
            const Center(
              child: Text(
                '© 2025 Nepal License Guide',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Made with ❤️ for Nepal',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.blue[600]),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }

  Widget _buildLegalCard(
    BuildContext context,
    IconData icon,
    String title,
    String description,
    String actionText,
  ) {
    return Card(
      elevation: 1,
      child: InkWell(
        onTap: () {
          _showLegalDialog(context, title, _getLegalContent(title));
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, size: 32, color: Colors.blue[600]),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      actionText,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: Colors.grey[400]),
            ],
          ),
        ),
      ),
    );
  }

  String _getLegalContent(String title) {
    switch (title) {
      case 'Privacy Policy':
        return '''PRIVACY POLICY

Last Updated: December 28, 2025

We respect your privacy. This app is designed with privacy in mind:

✅ NO DATA COLLECTION
• We do not collect any personal information
• No user accounts or registration required
• No location tracking
• No contact information access

✅ COMPLETELY OFFLINE
• Works 100% offline
• No internet connection required
• No data sent to external servers
• No analytics or tracking

✅ LOCAL STORAGE ONLY
• All app data stays on your device
• No cloud synchronization
• Your privacy is fully protected

✅ NO THIRD-PARTY SERVICES
• No advertising networks
• No analytics platforms
• No social media integration
• No payment processors

✅ CHILDREN'S PRIVACY
• Safe for all ages
• No data collected from anyone

Your privacy is 100% protected. For the complete Privacy Policy, please visit our GitHub repository or contact us.

Contact: [Your Email]''';

      case 'Terms of Service':
        return '''TERMS OF SERVICE

Last Updated: December 28, 2025

ACCEPTANCE OF TERMS
By using Nepal Driving License Guide, you agree to these terms.

EDUCATIONAL PURPOSE
• This app is for educational purposes only
• Information should be verified with official sources
• Not affiliated with Nepal Government or Transport Department

NO GUARANTEES
• Content is provided "as is"
• We strive for accuracy but cannot guarantee success in exams
• Rules and regulations may change

YOUR RESPONSIBILITY
• Verify all information with official sources
• Use the app as a study aid, not the only resource
• Check for updates regularly

INTELLECTUAL PROPERTY
• All content is copyrighted
• Open source under MIT License
• Respect copyright and license terms

PROHIBITED USE
• Do not use for illegal purposes
• Do not attempt to hack or modify the app
• Do not redistribute without permission

DISCLAIMER
• App not officially affiliated with any government agency
• Always consult official sources for critical decisions
• We are not liable for exam results or license applications

CHANGES
• We may update these terms at any time
• Continued use means acceptance of changes

For complete Terms of Service, visit our GitHub repository.

Contact: [Your Email]''';

      case 'Open Source':
        return '''MIT LICENSE

Copyright (c) 2025 Sohan Dhungel

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

---

CONTRIBUTING
This is an open source project. Contributions are welcome!

GitHub: github.com/yourusername/nepal_driving_license_guide

You can:
• Report bugs
• Suggest features
• Submit pull requests
• Improve documentation
• Update content

See CONTRIBUTING.md in the repository for guidelines.''';

      default:
        return '';
    }
  }

  void _showLegalDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: Text(
            content,
            style: const TextStyle(fontSize: 14, height: 1.5),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
