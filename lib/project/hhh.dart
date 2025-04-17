import 'package:flutter/material.dart';
import 'package:untitled11/project/zzz.dart';
//import 'package:untitled11/project/zzz.dart';
//import 'package:untitled11/project/mmoohh.dart';


class hhh extends StatefulWidget {
  final data;
  const hhh({super.key, this.data});

  @override
  State<hhh> createState() => _hhhState();
}

class _hhhState extends State<hhh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.orange,
          iconSize: 30,
          selectedItemColor: Colors.black,
          items:const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "*"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "*"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "*"),
          ],
        ),
      endDrawer: Drawer(
       
            child: Container(
              padding:const EdgeInsets.all(15),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                      height: 60,
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset("images/lin.jpg",fit: BoxFit.cover,),
                        
                      ),),
                 const     Expanded(child:ListTile(
                        title: Text("mahmoud",style: TextStyle(fontWeight: FontWeight.w600),),
                        subtitle: Text("+963938159231",style: TextStyle(color: Colors.red),),
                      ) )
                    ],
                  ),
                 ListTile(
                    title:const Text("homepage"),
                    leading:const Icon(Icons.home),
                     iconColor: Colors.orange,
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    title: const Text("paspord"),
                    leading: const Icon(Icons.password),
                     iconColor: Colors.orange,
                 onTap: () {
                   
                 },
                  ),
                   ListTile(
                    title: const Text("email"),
                    leading: const Icon(Icons.email),
                     iconColor: Colors.orange,
                 onTap: () {
                   
                 },
                  ),
                 ListTile(
                    title: const Text("namber"),
                    leading: const Icon(Icons.phone),
                     iconColor: Colors.orange,
                 onTap: () {
                   
                 },
                  ),
                    ListTile(
                    title: const Text("Account"),
                    leading: const Icon(Icons.account_balance),
                     iconColor: Colors.orange,
                 onTap: () {
                   
                 },
                  ),
                   ListTile(
                    title: const Text("star"),
                    leading: const Icon(Icons.star,),
                    iconColor: Colors.orange,
                 onTap: () {
                   
                 },
                  ),
                ],
              ),
            ),
          ),
       
      
      appBar: AppBar(
        centerTitle: true,
        iconTheme:const IconThemeData(color: Colors.black,),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        title:const Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.shopping_bag,color: Colors.orange,),
           Text(" Econommerce ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
            Text(" mahmoud",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.w600),)
        ],)
        ,),
        body: ListView(children: [
            Image.asset(widget.data["image"]),
            Container(margin:const EdgeInsets.only(bottom: 10),
              child:Text(widget.data["title"],textAlign: TextAlign.center,style:const TextStyle(fontWeight: FontWeight.bold),) ,),
              Container(child:Text(widget.data["subtitle"],textAlign: TextAlign.center,) ,),
                  Container(margin:const EdgeInsets.only(bottom: 25),
                    child:Text(widget.data["price"],textAlign: TextAlign.center,style:const TextStyle(color: Colors.orange,fontWeight: FontWeight.w700
                  ),) ,),
               Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
       const            Text("colors:"),
          const         SizedBox(width: 10,),
                  Container(height: 30,width: 30,decoration: BoxDecoration(
                    color: Colors.grey,borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange)
                  ),),
      const            Text(" Grey"),
             const                   SizedBox(width: 20,),
                  Container(height: 30,width: 30,decoration: BoxDecoration(
                    color: Colors.black,borderRadius: BorderRadius.circular(30),
                   // border: Border.all(color: Colors.orange)
                  ),),
              const    Text(" black"),
               ],),
          //  Container(child:Text("Size: ") ,)
          Container(margin:const EdgeInsets.only(bottom: 10),),
                  Center(
                    
                    child: MaterialButton(color: Colors.black,
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => zzz(),));
                    },child:const Text("Go To carde",style: TextStyle(color: Colors.white),),),
                  )
        ],
        
        ),
        );
  }
}


    

