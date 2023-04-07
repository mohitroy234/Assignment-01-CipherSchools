class Items{
  String imageUrl;
  String htext;
  String text;
  String bkm;
  Items(this.imageUrl,this.htext,this.text,this.bkm);

  static List<Items> list= [
      Items('assets/cer.png','Q-rated Content','Unlock quality content with our Q-rated content','assets/free.png'),
      Items('assets/project.png','Projects','Get the hands-on experience with real-time projects guided by expert mentors','assets/free.png'),
      Items('assets/ment.png','Mentors','Start learning from the mentors coming from giant corporations like Microsoft,Google,Amazon,Paypal,etc!','assets/free.png'),
      Items('assets/cp.png', 'Earn CipherPoints', 'Earn exclusive rewards by developing your skills with us!','assets/free.png')
    ];
  }
  class carousellist{
  String image;
  String htext;
  String text;
  String btext;
  carousellist(this.image,this.htext,this.text,this.btext);
  
  static List<carousellist> listofitems=[
    carousellist("assets/webd.png","Full-stack Development using MERN","Web Development","Watch"),
    carousellist("assets/flut.jpg","App Development with flutter","App Development","Watch"),
    carousellist("assets/lang.png","Free Mock IELTS/TOEFL","Assessment Test","Try Now"),
    carousellist("assets/python.jpg","Python & Django for Beginners","Programming","Watch"),
  ];
  }

  class recommList{
  String image;
  String course;
  String htext;
  String text1;
  String text2;
  String icon;
  String name;
  String text3;
  recommList(this.image,this.course,this.htext,this.text1,this.text2,this.icon,this.name,this.text3);

  static List<recommList> listofitem=[
    recommList('assets/lang1.webp', 'Languify', 'Free Mock IELTS/TOEFL', 'AI generated feedback and ...', 'Test duration:30 mins/3 hours','assets/l.png','Languify', 'express & excel'),
    recommList('assets/web.png', 'Web Development', 'Web Development', 'No. of videos:138', 'Course time: 21.8 hours', 'assets/harshit.png','Harshit Vashisth','Instructor'),
    recommList('assets/js.png', 'Web Development','JavaScript(Js)', 'No. of videos:36', 'Course time: 5.1 hours', 'assets/shruti.png', 'Shruti Codes', 'Instructor'),
    recommList('assets/ht.png', 'Web Development','Cascading Style Sheet(CSS)', 'No. of videos:24', 'Course time: 3.0 hours', 'assets/shruti.png', 'Shruti Codes', 'Instructor'),
    recommList('assets/fl.png', 'App Development', 'App Development with Flutter', 'No. of videos:20', 'Course time: 3.3 hours', 'assets/aditya.jpg','Aditya Thakur','Instructor'),
  ];
  }
