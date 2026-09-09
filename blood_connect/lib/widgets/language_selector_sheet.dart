import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/locale_controller.dart';
import '../theme/app_theme.dart';
import '../l10n/app_localizations.dart';

class LanguageSelectorSheet extends StatelessWidget {
  const LanguageSelectorSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final localeController = Provider.of<LocaleController>(context);
    final activeLocale = localeController.locale.languageCode;
    final l10n = AppLocalizations.of(context)!;

    final languages = [
      {'code': 'en', 'name': 'English'},
      {'code': 'te', 'name': 'తెలుగు (Telugu)'},
      {'code': 'hi', 'name': 'हिन्दी (Hindi)'},
      {'code': 'ta', 'name': 'தமிழ் (Tamil)'},
      {'code': 'kn', 'name': 'ಕನ್ನಡ (Kannada)'},
      {'code': 'ml', 'name': 'മലയാളം (Malayalam)'},
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: const BoxDecoration(
        color: AppTheme.surfaceWhite,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            l10n.selectLanguage,
            style: AppTheme.headlineLgMobile,
          ),
          const SizedBox(height: 16),
          ...languages.map((lang) {
            final isSelected = activeLocale == lang['code'];
            return ListTile(
              title: Text(
                lang['name']!,
                style: AppTheme.bodyLg.copyWith(
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                  color: isSelected ? AppTheme.primary : AppTheme.onBackground,
                ),
              ),
              trailing: isSelected
                  ? const Icon(Icons.check, color: AppTheme.primary)
                  : null,
              onTap: () {
                localeController.setLocale(Locale(lang['code']!));
                Navigator.pop(context);
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}
