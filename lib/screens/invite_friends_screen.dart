import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/simple_app_bar.dart';
import 'package:share_plus/share_plus.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({super.key});

  void _shareInvite(BuildContext context) {
    Share.share('انضم إلى التطبيق الرائع هذا: https://example.com/invite?ref=USER123');
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('تم نسخ رابط الدعوة')));
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark ? AppTheme.darkBackground : AppTheme.lightBackground,
      appBar: const SimpleAppBar(title: 'دعوة الأصدقاء'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('ادعُ أصدقائك واحصل على مكافآت', style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.getCardColor(context),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Text('رابط الدعوة الخاص بك', style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  SelectableText('https://example.com/invite?ref=USER123'),
                  const SizedBox(height: 12),
                  ElevatedButton.icon(
                    onPressed: () => _shareInvite(context),
                    icon: const Icon(Icons.share),
                    label: const Text('مشاركة'),
                    style: ElevatedButton.styleFrom(backgroundColor: AppTheme.goldColor, foregroundColor: Colors.black),
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
