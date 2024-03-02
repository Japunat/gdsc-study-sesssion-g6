import 'package:flutter/material.dart';

class NewBody extends StatefulWidget {
  const NewBody({super.key});

  @override
  State<NewBody> createState() => _NewBodyState();
}

class _NewBodyState extends State<NewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
            height: 400,
            //width: 700,
            decoration: const BoxDecoration(
              // color: Colors.black,
              image: DecorationImage(
                  image: AssetImage("assets/images/image-2.jpg"),
                  //scale: BorderSide.strokeAlignInside
                  fit: BoxFit.fitWidth),
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_forward, color: Colors.white),
                        Icon(
                          Icons.filter_3_sharp,
                          color: Colors.white,
                        )
                      ]),
                ),
              ],
            )),
        Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(108, 158, 158, 158)),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Lewel",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              const Center(
                child: Text("Book by carel sang  2hr30m"),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 224, 179, 46),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 224, 179, 46),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 224, 179, 46),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 224, 179, 46),
                  ),
                  Icon(Icons.star),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(143, 158, 158, 158)),
                    padding: const EdgeInsets.all(15),
                    child: const Text("FREE"),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(167, 158, 158, 158)),
                    padding: const EdgeInsets.all(15),
                    child: const Icon(Icons.heart_broken),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(154, 158, 158, 158)),
                    padding: const EdgeInsets.all(15),
                    child: const Icon(Icons.share),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.line_axis,
                    color: Color.fromARGB(226, 244, 67, 54),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text("Book Information",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
                ],
              ),
              SizedBox(height: 30),
              // Column(mainAxisAlignment: MainAxisAlignment.start,children: [
              Text(
                  "What a fantastic episode it is today! We were giggling uncontrollably at the experiences and life lessons that Abel shared."),
              Text(
                  "yet, we never anticipated seeing this aspect of Abel.He excels academically and is currently succeeding on the tiktok platform"),
              Text(".grab a popcorn and just have a ወቸው Good time."),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.line_axis,
                    color: Color.fromARGB(226, 244, 67, 54),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "About Author",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )
                ],
              ),
              SizedBox(height: 30),
              // Column(mainAxisAlignment: MainAxisAlignment.start,children: [
              Text(
                  "What a fantastic episode it is today! We were giggling uncontrollably at the experiences and life lessons that Abel shared."),
              Text(
                  "yet, we never anticipated seeing this aspect of Abel.He excels academically and is currently succeeding on the tiktok platform"),
              Text(".grab a popcorn and just have a ወቸው Good time."),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("User review",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  Icon(Icons.arrow_forward)
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Start Reading")))
      ]),
    );
  }
}
