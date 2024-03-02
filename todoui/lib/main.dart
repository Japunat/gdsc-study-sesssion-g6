import 'package:flutter/material.dart';

import 'package:todoui/page%201/first.dart';


void main() {

  runApp(const Work());

}
   class Work extends StatelessWidget {
  const Work({super.key});
  
  @override
  Widget build(BuildContext context) {
    return
    
    MaterialApp(
    home: const First(),
    theme: ThemeData(useMaterial3: true),
  );
  }
  }
