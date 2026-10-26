import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'asset_verification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initializes your live Supabase connection using your project credentials
  await Supabase.initialize(
   url: 'https://supabase.co',
    publishableKey: 'sb_publishable_l3687oLVtvsn8GBynMebAA_WTXaZ9nZ1pB3WJ0e2Y4R7K9L5M8N1P4Q7R0S3T6U9V2W5X8Y1Z4', 
  );

  runApp(const LocoGuideApp());
}

class LocoGuideApp extends StatelessWidget {
  const LocoGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LocoGuide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const AssetVerificationScreen(),
    );
  }
}
