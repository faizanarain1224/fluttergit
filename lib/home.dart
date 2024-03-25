import 'package:firstandroid/Model/Place_model.dart';
import 'package:flutter/material.dart';
import 'Home/widget/Category_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text("Citi Guide"),
            centerTitle: true,
            actions: [
              IconButton(icon: const Icon(Icons.notifications),
                onPressed: () {},
              )
            ],
            backgroundColor: Colors.grey,
            leading: IconButton(
              icon: const Icon(Icons.menu),onPressed: () {},
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )
            ),
          ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  RichText(text:const TextSpan(text: "Hello",style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(text: " ,USER",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 18))
                      ]))
                ],
              ),
              //   search Section
              const SizedBox(
                height: 15,
              ),
              const Text("Explore new destinations",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(100),
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(100)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Search Your Destination",
                              prefixIcon: Icon(Icons.search),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        const CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.orange,
                          child: Icon(
                            Icons.sort_by_alpha_sharp,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //   Category
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text("Category",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Categorycard(
                          press: (){},
                          image:'images/Mountain.jpg',
                          title:"Mountains",
                        ),
                        Categorycard(
                          press: (){},
                          image:'images/forest.jpg',
                          title:"Forests",
                        ),
                        Categorycard(
                          press: (){},
                          image:'images/sea.jpg',
                          title:"Sea",
                        ),
                        Categorycard(
                          press: (){},
                          image:'images/desert.jpg',
                          title:"Deserts",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Cities
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text("Cities",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                child: ListView.builder(
                    itemCount: places.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                return Row(
                  children: [
                    Material(
                      elevation: 5,
                      child: Container(
                        height: 320,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit:BoxFit.cover,
                                      image: AssetImage('images/Karachi.jpg')),
                                ),
                              )
                              ,
                            )],
                        ),
                      ),
                    )
                  ],
                );
                }))
              ]
          ),
        ),
      ),
      
      );
  }
}


