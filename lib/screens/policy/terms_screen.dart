import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../widgets/simple_app_bar.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppTheme.darkBackground : AppTheme.lightBackground,
      appBar: const SimpleAppBar(title: 'الشروط والأحكام'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              context,
              'قبول الشروط',
              'باستخدامك لتطبيق Flex Yemen، فإنك توافق على هذه الشروط والأحكام. إذا كنت لا توافق، يرجى عدم استخدام التطبيق.',
            ),
            _buildBulletSection(
              context,
              'الاستخدام المسموح',
              [
                'البيع والشراء القانوني',
                'التواصل بين المستخدمين',
                'البحث عن المنتجات والخدمات',
              ],
            ),
            _buildBulletSection(
              context,
              'الاستخدام الممنوع',
              'يمنع استخدام التطبيق لـ:',
              [
                'أي نشاط غير قانوني',
                'الاحتيال أو الخداع',
                'نشر محتوى مسيء أو غير لائق',
                'انتهاك حقوق الملكية الفكرية',
              ],
            ),
            _buildBulletSection(
              context,
              'الحسابات',
              [
                'يجب تقديم معلومات صحيقة ودقيقة',
                'أنت مسؤول عن الحفاظ على سرية كلمة المرور',
                'يجب إعلامنا فوراً بأي استخدام غير مصرح به',
                'نحتفظ بالحق في إيقاف أو حذف الحسابات المخالفة',
              ],
            ),
            _buildBulletSection(
              context,
              'الطلبات والمدفوعات',
              [
                'الطلب ملزم بعد التأكيد',
                'الأسعار قابلة للتغيير دون إشعار مسبق',
                'يجب الدفع خلال الوقت المحدد',
                'الإلغاء يخضع لسياسة الإلغاء الخاصة بنا',
              ],
            ),
            _buildBulletSection(
              context,
              'الأسعار والعروض',
              [
                'جميع الأسعار بالريال اليمني',
                'العروض محدودة الوقت والكمية',
                'نحتفظ بالحق في تعديل الأسعار',
                'الأسعار لا تشمل رسوم الشحن إلا إذا ذكر خلاف ذلك',
              ],
            ),
            _buildSection(
              context,
              'المسؤولية',
              'Flex Yemen هو وسيط فقط بين البائع والمشتري. لا نتحمل مسؤولية جودة المنتجات أو التأخير في الشحن.',
            ),
            _buildSection(
              context,
              'الملكية الفكرية',
              'جميع المحتويات محمية بحقوق النشر. لا يجب نسخ أو توزيع المحتوى بدون إذن.',
            ),
            _buildSection(
              context,
              'التعديلات',
              'نحتفظ بالحق في تعديل هذه الشروط في أي وقت. سيتم إعلام المستخدمين بالتغييرات الجوهرية.',
            ),
            _buildSection(
              context,
              'القانون الساري',
              'تخضع هذه الشروط للقوانين اليمنية. أي نزاع يحل في محاكم صنعاء.',
            ),
            _buildSection(
              context,
              'اتصل بنا',
              'لأي استفسارات حول الشروط والأحكام: legal@flexyemen.com',
            ),
            const SizedBox(height: 24),
            Text(
              'آخر تحديث: مارس 2026',
              style: TextStyle(
                color: AppTheme.getSecondaryTextColor(context),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Changa',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppTheme.goldColor,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: const TextStyle(height: 1.6),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildBulletSection(BuildContext context, String title, String? subtitle, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Changa',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppTheme.goldColor,
          ),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(fontSize: 14)),
        ],
        const SizedBox(height: 8),
        ...items.map((item) => _buildBulletPoint(context, item)),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildBulletPoint(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '- ',
            style: TextStyle(
              fontSize: 14,
              color: AppTheme.goldColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
