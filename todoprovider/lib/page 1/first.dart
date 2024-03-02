import 'package:flutter/material.dart';
import 'package:todoprovider/page%202/task_item.dart';


class First extends StatelessWidget {
  const First({super.key});
  
  @override
  Widget build(BuildContext context) {
    return
 Scaffold(
      body: Container(
        
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(213, 219, 89, 29),
            Color.fromARGB(213, 219, 89, 29)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child:Center(
      child: Column(
      
        mainAxisSize: MainAxisSize.min,
        children: [
          
          Image.asset(
            "asset/images/first.png",
            width: 200,
            //height: 400,
          ),
          
          const SizedBox(
            height: 200,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(),
                ),
              );
            }, 
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 14, 117, 202),
                foregroundColor: Colors.white),
            child: const Text('Get Started'),
          )
        ],
      ),
    ),
      ),
    );

    
  }
}