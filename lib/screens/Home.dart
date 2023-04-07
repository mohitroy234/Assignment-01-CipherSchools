import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipherschool/req/items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List RandomImages =[
    'assets/teach1.png',
    'assets/teach2.png',
    'assets/teach3.png'
  ];
  final lists = Items.list;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.asset('assets/cipher.png',width: 40,height: 40,),
        ),
        title: Text('CipherSchools',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.list),color: Colors.black)
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              RichText(
                  text: TextSpan(text: 'Welcome to ',style: TextStyle(fontSize: 45,color: Colors.black,fontWeight: FontWeight.bold),
                      children:[
                    TextSpan(text:'the',style: TextStyle(fontSize: 45,color: Colors.orange,fontWeight: FontWeight.bold) )
                  ]
                  ),
              ),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(text: 'Future ',style: TextStyle(fontSize: 45,color: Colors.orange,fontWeight: FontWeight.bold),
                    children:[
                      TextSpan(text:'of Learning!',style: TextStyle(fontSize: 45,color: Colors.black,fontWeight: FontWeight.bold) )
                    ]
                ),
              ),
              SizedBox(height: 30,),
              Text('Start Learning by the creators for',style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(height: 10,),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('absolute Free',textStyle: TextStyle(color: Colors.orangeAccent,fontSize: 30)),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                    for(int i=0;i<RandomImages.length;i++)
                      Align(
                       widthFactor: 0.5,
                       child: CircleAvatar(
                         backgroundColor: Colors.white,
                         radius: 25,
                         child: CircleAvatar(
                           radius:20,
                           backgroundImage: AssetImage(RandomImages[i]),
                         ),
                       ),
                      ),
                    ],),

                  Column(
                    children: [
                      Text('50+',style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold),),
                      Text('Mentors',style: TextStyle(fontSize: 16,color: Colors.black),),
                    ],
                  ),

                  Text('|',style: TextStyle(color: Colors.grey,fontSize: 40),),

                  Column(
                    children: [
                      Text('4.8/5',style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.star,color: Colors.orange,),
                          Icon(Icons.star,color: Colors.orange,),
                          Icon(Icons.star,color: Colors.orange,),
                          Icon(Icons.star,color: Colors.orange,),
                          Icon(Icons.star_half,color: Colors.orange,),
                          Text('Ratings',style: TextStyle(fontSize: 16,color: Colors.black)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Container(
                height: 60,
                width: 250,
                decoration:BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child:Text('Start Learning Now ->',style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),

              SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.all(15.0),
                child: CarouselSlider(items: lists.map((e) =>  Container(
                  margin: EdgeInsets.all(10.0),
                  width: 200,
                  height: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.blueGrey.shade900,
                      boxShadow: const[
                        BoxShadow(offset: Offset(0, 4),blurRadius: 4,color: Colors.black)
                      ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:AssetImage(e.imageUrl,),
                              ),
                            ),
                            Image(image: AssetImage(e.bkm))
                          ],
                        ),
                        SizedBox(height: 10,),
                        Align(alignment:Alignment.centerLeft,child: Container(child: Text(e.htext,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign:TextAlign.start,))),
                        SizedBox(height: 10,),
                        Container(child: Text(e.text,style: TextStyle(fontSize: 13,color: Colors.grey),))
                      ],
                    ),
                  ),
                )).toList(),options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:Container(
        height: 60,
        margin: EdgeInsets.only(bottom: 25,left: 15,right: 15),
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color:Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0,3),
              )
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, 'Home');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/hm.png',width: 20,height: 20,color:Colors.orangeAccent),
                  Text('Home',style: TextStyle(fontSize: 15,color: Colors.orangeAccent),)
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, 'Course');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/Courses.png',width: 20,height: 20,),
                  Text('Courses',style: TextStyle(fontSize: 15),)
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/Trending.png',width: 20,height: 20,),
                Text('Trending',style: TextStyle(fontSize: 15),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/Profile.png',width: 20,height: 20,),
                Text('Profile',style: TextStyle(fontSize: 15),)
              ],
            )
          ],
          ),
        ),
    );
  }

}
