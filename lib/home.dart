import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List Productname = [
    "OnePlus 10 Pro",
    "OnePlus Nord N20",
    "SAMSUNG Galaxy A53",
    "SAMSUNG Galaxy S22 ",
    "UMIDIGI Cell Phone G1",
    "UMIDIGI Power 5",
    "UMIDIGI F3",
    "OnePlus Nord N200",
    "Moto G Power ",
    "Motorola Moto G",
  ];
  List Productprice = [
    135,
    125,
    252,
    120,
    121,
    122,
    239,
    129,
    179,
    123,
  ];
  List Productimages = [
    "assets/images/31p7p2S+SQL._AC_SR160,160_.png",
    "assets/images/31DOdQ5CuHL._AC_SR320,320_.png",
    "assets/images/418G4uJniEL._AC_SR160,160_.png",
    "assets/images/41Te8HXFyjL._AC_SR160,160_.png",
    "assets/images/41FMg6dVzpL._AC_SR160,160_.png",
    "assets/images/41Zraw00AHL._AC_SR160,160_.png",
    "assets/images/41x+CmtpikL._AC_SR160,160_.png",
    "assets/images/71DCZOdq92S._AC_SS450_.png",
    "assets/images/71MiNDiFz1L._AC_SX466_.png",
    "assets/images/41wKBxAos4L._AC_SS450_.png",
  ];
  List Productdescription = [
    "Unlocked\nAndroid 12.0\n5G\n128 GB\nTouchscreen\n6.7 inches",
    "Unlocked\nOxygenOS 11\n5G\n128 GB\nTouchscreen\n6.43 inches",
    "Unlocked\nAndroid 12.0\n4G\n64 GB\nTouchscreen\n6.5 inches",
    "Unlocked\nAndroid 12.0\n5G\n256 GB\nTouchscreen\n6.8 inches",
    "Unlocked\nAndroid 12.0\n5G\n128 GB\nTouchscreen\n6.7 inches",
    "Unlocked\nAndroid 12.0\n4G\n64 GB\nTouchscreen\n6.53 inches",
    "Unlocked\nAndroid 12.0\n5G\n64 GB\nTouchscreen\n6.7 inches",
    "Unlocked\nOxygenOS 11\n5G\n64 GB\nTouchscreen\n6.4 inches",
    "Unlocked\nAndroid 11.0\n3G\n32 GB\nTouchscreen\n6 inches",
    "Unlocked\nAndroid 12.0\n4G\n64 GB\nTouchscreen\n6.8 inches",
  ];
  List l1=[];
  int a=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade700,
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore Product",
                style: TextStyle(fontSize: 30,color: Colors.white),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "search for product...",
                            hintStyle: TextStyle(fontSize: 20),
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none
                            ),
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 60,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.camera_alt_outlined,color: Color(0xff3B62E7),size: 30),
                  ),
                ],
              ),
              Text("Electronics",style: TextStyle(color: Colors.white,fontSize: 20),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Productname.asMap().entries.map((e) => Box(Productimages[e.key],Productprice[e.key],Productname[e.key],Productdescription[e.key])).toList(),
                ),
              ),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.favorite_border_sharp,color: Colors.blue.shade700,size: 30),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.tune,color: Colors.blue.shade700,size: 30),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.shopping_bag_outlined,color: Colors.blue,size: 30),
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
  Widget Box(String image,int price,String name,String description)
  {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Expanded(
        child: Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: FloatingActionButton(
                        backgroundColor: Color(0xffEBF0FD),
                        elevation: 0,
                        onPressed: () {
                          setState(() {
                            if(a==0)
                            {
                              a=1;
                            }
                            else
                            {
                              a=0;
                            }
                          });
                        },
                        child: Icon(Icons.favorite,color: a==0?(Colors.white) :(Colors.red),size: a==0 ?15 :30),
                      ),
                    ),
                    FloatingActionButton(backgroundColor: Colors.blue.withOpacity(0.90),elevation: 0,onPressed: (){},child: Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 30),),
                  ],
                ),
                Center(child: Image.asset(image,width: 200,height: 200,)),
                Center(child: Text("\$ $price",style: TextStyle(fontSize: 25))),
                Text("$name",style: TextStyle(fontSize: 30,color: Colors.blue)),
                Row(
                  children: [
                    Icon(Icons.star,color: Color(0xffF7C525),),
                    Icon(Icons.star,color: Color(0xffF7C525),),
                    Icon(Icons.star,color: Color(0xffF7C525),),
                    Icon(Icons.star,color: Color(0xffF7C525),),
                    Icon(Icons.star_border,color: Color(0xffF7C525),),
                  ],
                ),
                TextButton(onPressed: (){
                  l1.add(image);
                  l1.add(price);
                  l1.add(name);
                  l1.add(description);
                  Navigator.pushNamed(context, '2',arguments: l1);
                },child: Text("See the details >",style: TextStyle(fontSize: 25),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
