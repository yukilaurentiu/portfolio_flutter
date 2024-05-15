import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:portfolio_flutter/portofolio.dart';
import 'package:flutter_localization/flutter_localization.dart';

import 'components/app_localizations.dart';

void main() => runApp(const MyApp());

// mixin AppLocale {
//   static const String title = 'title';
//   static const String thisIs = 'thisIs';
//
//   static const Map<String, dynamic> EN = {
//     title: 'Localization',
//     thisIs: 'This is %a package, version %a.',
//   };
//
//   static const Map<String, dynamic> JA = {
//     title: 'ローカリゼーション',
//     thisIs: 'これは%aパッケージ、バージョン%aです。',
//   };
// }


class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final FlutterLocalization _localization = FlutterLocalization.instance;

  // @override
  // void initState() {
  //   _localization.init(
  //     mapLocales: [
  //       const MapLocale(
  //         'en',
  //         AppLocale.EN,
  //         countryCode: 'US',
  //       ),
  //       const MapLocale(
  //         'ja',
  //         AppLocale.JA,
  //         countryCode: 'JP',
  //       ),
  //     ],
  //     initLanguageCode: 'en',
  //   );
  //   _localization.onTranslatedLanguage = _onTranslatedLanguage;
  //   super.initState();
  // }
  //
  // void _onTranslatedLanguage(Locale? locale) {
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('jp', 'JP'),
      ],
      theme: myTheme(),
      home: const Portfolio(),
    );
  }
}

// class SettingsScreen extends StatefulWidget {
//   const SettingsScreen({super.key});
//
//   @override
//   State<SettingsScreen> createState() => _SettingsScreenState();
// }
//
// class _SettingsScreenState extends State<SettingsScreen> {
//   final FlutterLocalization _localization = FlutterLocalization.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(AppLocale.title.getString(context))),
//       body: Container(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: ElevatedButton(
//                     child: const Text('🇬🇧English'),
//                     onPressed: () {
//                       _localization.translate('en');
//                     },
//                   ),
//                 ),
//                 const SizedBox(width: 8.0),
//                 Expanded(
//                   child: ElevatedButton(
//                     child: const Text('🇯🇵日本語'),
//                     onPressed: () {
//                       _localization.translate('ja', save: false);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16.0),
//             ItemWidget(
//               title: 'Current Language',
//               content: _localization.getLanguageName(),
//             ),
            // ItemWidget(
            //   title: 'String Format',
            //   content: Strings.format(
            //     'Hello %a, this is me %a.',
            //     ['Dara', 'Sopheak'],
            //   ),
            // ),
            // ItemWidget(
            //   title: 'Context Format String',
            //   content: context.formatString(
            //     AppLocale.thisIs,
            //     [AppLocale.title, 'LATEST'],
            //   ),
            // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ItemWidget extends StatelessWidget {
//   const ItemWidget({
//     super.key,
//     required this.title,
//     required this.content,
//   });
//
//   final String? title;
//   final String? content;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(child: Text(title ?? '')),
//           const Text(' : '),
//           Expanded(child: Text(content ?? '')),
//         ],
//       ),
//     );
//   }
// }