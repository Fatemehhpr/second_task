import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_task/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),
        ),
        
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff2e7d78)),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color firstColor = Color(0xff2e7d78);
    Color secondColor = Colors.white;
    Color thirdColor = Colors.amber;
    Color fourthColor = Colors.black26;
    final items = AppDatabase.items;
    return Scaffold(
      backgroundColor: Color(0xff83c9c5),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: firstColor,
          ),
          width: 320,
          height: 650,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.line_horizontal_3, 
                      size: 25, 
                      color: secondColor,
                    ),
                    Icon(
                      CupertinoIcons.search, 
                      size: 25,
                      color: secondColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Text('Explore',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(25, 15, 0, 13),
                  itemBuilder: (context, index){
                    final item = items[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/images/${item.imageFileName}",
                          fit:BoxFit.fill,
                          width: 100,
                          height: 140,
                        )
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                width: 320,
                height: 381,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                  color: secondColor
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SizedBox(
                        width: 75,
                        height: 20,
                        child: ElevatedButton(
                          onPressed: (){}, 
                          child: Text('Chairs'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: thirdColor,
                            foregroundColor: secondColor,
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                            )
                          ),
                        ),
                      ),
                      textButton(text: 'Sofa',),
                      textButton(text: 'Table',),
                    ],),
                    product(
                      price: 20,
                      imagePath: 'assets/images/chair_1.jpg',
                    ),
                    product(
                      price: 35,
                      imagePath: 'assets/images/sofa_1.jpg',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}

class product extends StatelessWidget {
  const product({
    super.key,
    required this.price,
    required this.imagePath,
  });

  final price;
  final imagePath;

  @override
  Widget build(BuildContext context) {
    Color firstColor = Color(0xff2e7d78);
    Color secondColor = Colors.white;
    Color thirdColor = Colors.amber;
    Color fourthColor = Colors.black26;
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 123,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    'Lorem ipsum dolor sit \namet, consectetur',
                    style: TextStyle(
                      fontSize: 11,
                      color: fourthColor
                    ),
                  ),
                ),
                Text(
                  '\$ ${price}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                  ),
                ),
                Row(
                  children: [
                    starBuilder(color: thirdColor,),
                    starBuilder(color: thirdColor,),
                    starBuilder(color: thirdColor,),
                    starBuilder(color: thirdColor,),
                    starBuilder(color: fourthColor,),
                    Text(
                      '4.8',
                      style: TextStyle(
                        color: fourthColor,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 55,
                      height: 20,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Text(
                          'Add',
                          style: TextStyle(
                            fontSize: 12 ,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: firstColor,
                          foregroundColor: secondColor,
                        ),
                      ),
                    ),
                    Icon(
                      CupertinoIcons.heart_fill,
                      color: fourthColor,
                      size: 23,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 165,
            height: 135,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15)
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class starBuilder extends StatelessWidget {
  final color;
  const starBuilder({
    super.key, 
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Icon(
        CupertinoIcons.star_fill, 
        color: color,
        size: 15,
      ),
    );
  }
}

class textButton extends StatelessWidget {
  final text;

  const textButton({
    super.key, 
    required this.text
  });
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){}, 
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black26,
          fontSize: 15,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}
