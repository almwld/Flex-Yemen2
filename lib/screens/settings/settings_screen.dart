import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الإعدادات', style: TextStyle(fontFamily: 'Changa')),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSettingsCard(
            context,
            title: 'إعدادات الحساب',
            icon: Icons.person_outline,
            onTap: () => Navigator.pushNamed(context, '/account_info'),
          ),
          _buildSettingsCard(
            context,
            title: 'اللغة',
            icon: Icons.language,
            onTap: () => Navigator.pushNamed(context, '/language'),
          ),
          _buildSettingsCard(
            context,
            title: 'الإشعارات',
            icon: Icons.notifications_none,
            onTap: () => Navigator.pushNamed(context, '/notifications_settings'),
          ),
          _buildSettingsCard(
            context,
            title: 'الأمان',
            icon: Icons.security,
            onTap: () => Navigator.pushNamed(context, '/security_settings'),
          ),
          const SizedBox(height: 24),
          _buildSettingsCard(
            context,
            title: 'حول التطبيق',
            icon: Icons.info_outline,
            onTap: () => Navigator.pushNamed(context, '/about'),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsCard(BuildContext context, {required String title, required IconData icon, required VoidCallback onTap}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      // تم الإصلاح هنا: استدعاء الدالة وتمرير context
      color: AppTheme.getCardColor(context), 
      child: ListTile(
        leading: Icon(icon, color: AppTheme.goldColor),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
