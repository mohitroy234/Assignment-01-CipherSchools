

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipherschool/req/items.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  bool check=true;
  int currentIndex=0;
  final lists = carousellist.listofitems;
  final list = recommList.listofitem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: check==true? Colors.white:Colors.black,
    appBar:  AppBar(
      backgroundColor: check==true? Colors.white:Colors.grey.shade800,
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset('assets/cipher.png',width: 40,height: 40,),
      ),
      title: Text('CipherSchools',style: TextStyle(color: check==true? Colors.black:Colors.white,fontWeight: FontWeight.bold),),
      actions: [
        Row(
          children: [
            Icon(Icons.explore_outlined,size: 15,color: check==true? Colors.black:Colors.white,),
            Text('Browse',style: TextStyle(color:check==true? Colors.black:Colors.white,fontSize: 20),),
            Icon(Icons.keyboard_arrow_down,size: 15,color:check==true? Colors.black:Colors.white,),
          ],
        ),
        GestureDetector(
          onTap: (){
            if(check==true){
              setState(() {
                check=false;
              });

            }
            else{
              setState(() {
                check=true;
              });
            }
          },
          child: Container(width:50,margin:EdgeInsets.only(top: 17.0,bottom: 17.0),decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),color: Colors.grey),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(child: Center(
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('assets/moon.png'),
                ),

              )),
              SizedBox(width: 10,),
              SizedBox(child: Center(
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('assets/sun.png'),
                ),

              )),
            ],
          ),),
        ),
        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.bell,size: 20,),color: check==true? Colors.black:Colors.white),
        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.searchengin,size: 20,),color: check==true? Colors.black:Colors.white)
      ],
    ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: CarouselSlider(items: lists.map((e) =>Container(
                margin: EdgeInsets.only(left: 5.0,right: 5.0),
                height: 350,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(e.image,fit: BoxFit.fill,color:Colors.grey.withOpacity(0.5),colorBlendMode: BlendMode.color,),
                    Positioned(
                        top:40,
                        left: 20,
                        child: Container(
                          width: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(child: Text(e.htext,style: TextStyle(fontSize: 20,color: Colors.white,),textAlign: TextAlign.start,)),
                              SizedBox(height: 10,),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(decoration: BoxDecoration(
                                    color:Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(e.text,style: TextStyle(fontSize: 15,color: Colors.white),),
                                  ),
                                ),
                              ),
                              SizedBox(height:10,),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 13,
                                      backgroundColor: Colors.transparent,
                                      child: Image.asset('assets/cipher.png'),
                                    ),
                                    Text('CipherSchools',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color:Colors.orange,
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Center(child: Text(e.btext,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                      left:180,
                      bottom: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for(var i=0;i<lists.length;i++)
                            buildIndicator(currentIndex==i)
                        ],
                      ),
                    )
                  ],
                ),
              ) ).toList(), options:CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex=index;
                  });
                })
              ) ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended Courses',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: check==true? Colors.black:Colors.white),),
                  Container(
                    decoration: BoxDecoration(
                        color: check==true? Colors.black:Colors.white,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Popular',style: TextStyle(fontSize: 15,color:check==true? Colors.white:Colors.black),),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined,color: check==true? Colors.white:Colors.black,)
                        ],
                      )
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 320,
              width: double.infinity,
              child: Align(
                alignment: Alignment.topCenter,
                child: CarouselSlider(items:list.map((e) => Container(
                 height: 200,
                 width: 240,
                 decoration: BoxDecoration(
                   color: Colors.blueGrey.shade900,
                   borderRadius: BorderRadius.circular(15.0)
                 ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
                        ),
                        child: Image.asset(e.image,fit: BoxFit.fill,),
                      ),
                      SizedBox(height: 10,),
                      Column(
                        children: [
                         Container(
                           padding: EdgeInsets.all(5.0),
                           decoration: BoxDecoration(
                             color: Colors.orangeAccent.withOpacity(1.0),
                             borderRadius: BorderRadius.circular(12.0)
                           ),
                           child: Text(e.course,style: TextStyle(fontSize: 13,color: Colors.deepOrange),),
                         ),
                         SizedBox(height:8.0),
                          Text(e.htext,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),maxLines: 1,overflow: TextOverflow.ellipsis,textAlign: TextAlign.start,),
                          SizedBox(height: 8.0,),
                          Text(e.text1,style: TextStyle(fontSize: 15,color: Colors.grey),maxLines: 1,overflow: TextOverflow.ellipsis,textAlign: TextAlign.start,),
                          SizedBox(height: 8.0,),
                          Text(e.text2,style: TextStyle(fontSize: 15,color: Colors.grey),maxLines: 1,overflow: TextOverflow.ellipsis,textAlign: TextAlign.start,),
                          SizedBox(height: 8.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(e.icon),
                                backgroundColor: Colors.transparent,
                              ),
                              Column(
                                children: [
                                  Text(e.name,style: TextStyle(fontSize: 15,color:Colors.white),textAlign: TextAlign.start,),
                                  Text(e.text3,style: TextStyle(fontSize: 14,color: Colors.grey),textAlign: TextAlign.start,),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )).toList(),options: CarouselOptions(
                  aspectRatio: 0.9,
                  viewportFraction: 2,
                ),),
              ),

            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        margin: EdgeInsets.only(bottom: 25,left: 15,right: 15),
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            color:check==true? Colors.white:Colors.grey.shade800,
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
                  Image.asset('assets/hm.png',width: 20,height: 20,),
                  Text('Home',style: TextStyle(fontSize: 15),)
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
                  Image.asset('assets/Courses.png',width: 20,height: 20,color: Colors.orangeAccent,),
                  Text('Courses',style: TextStyle(fontSize: 15,color: Colors.orangeAccent),)
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
  Widget buildIndicator (bool isSelected){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: isSelected?12:0,
        width: isSelected?12:0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected? Colors.orange : Colors.grey
        ),
      ),
    );
  }
}
