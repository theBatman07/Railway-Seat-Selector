import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:railway_seat_selector/selection_button/provider/selection_button_provider.dart';
import 'package:railway_seat_selector/selection_button/selection_button_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SelectionButtonProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SelectionButtonPage(),
      ),
    );
  }
}
