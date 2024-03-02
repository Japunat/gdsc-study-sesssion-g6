import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoprovider/page%201/first.dart';
import 'package:todoprovider/page%202/task.dart';



void main()  {
 

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {

     
    return 
    
    
     ChangeNotifierProvider(
      create: (context) => Project(initialDate:DateTime.now()),
       child: MaterialApp(
          //title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color.fromARGB(255, 205, 103, 49)),
            useMaterial3: true,
          ),
         
            
          
         home: const First(),
        ),
     );
  
  }
}