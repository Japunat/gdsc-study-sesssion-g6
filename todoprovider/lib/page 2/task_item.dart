
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todoprovider/page%202/task.dart';
import 'package:todoprovider/page%203/third.dart';
import 'package:todoprovider/page%204/ditail.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  
 
  @override
  Widget build(BuildContext context) {
    Project todos = Provider.of<Project>(context);
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo list'),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: Column(
          children: [
            Image.asset(
              "asset/images/second.png",
             width: 200,
            height: 400,
            ),
           const Text('Tasks List',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30) ,),
          
               Expanded(
                child: ListView.builder(
                    itemCount: todos.allTasks.length, 
                    itemBuilder: (context, index) {
                  
                    
                      final main = todos.allTasks[index];
                      final time = todos.selectedDate;
                      return GestureDetector(
                        onTap: () {
                     
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> LastPage(us: time, me: main)));
                        },
                        child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 50,
                                  vertical: 25,
                                ),
                               
                                child: Row(
                                  
                                  children: [
                                   CircleAvatar(
                              child: Text(
                                todos.allTasks[index].title[0].toUpperCase(),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 24, 23, 22),
                                ),
                              ),
                            ),
                                    const SizedBox(width: 8),
                                    Text(todos.allTasks[index].title),
                                    const SizedBox(width: 1000), //spacing                
                                    Text(todos.selectedDate.toString()),
                                  ],
                                ),
                              ),
                            ),
                      );
                    }
                )
              ),
            
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Next() ));
      },
      child:const Icon(Icons.add) ,),

    );
  }
}