import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom:  TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Row(
                children: [
                  Text('Chat'),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    child: Center(child: Text('4',style: TextStyle(color: Colors.teal,fontSize: 12),)),
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  )
                  
                ],
              ),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            ),
          ]),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      PopupMenuItem(value: 1, child: Text('New Group')),
                      PopupMenuItem(value: 2, child: Text('Settings')),
                      PopupMenuItem(value: 3, child: Text('Logout')),
                    ]),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body:  TabBarView(
          children: [
            Text('camera'),
            ListView.builder(
              itemCount: 40,
                itemBuilder: (context , index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/5220075/pexels-photo-5220075.jpeg?auto=compress&cs=tinysrgb&w=300'),
                ),
                title: Text('KHAN'),
                subtitle: Text('kya kraha bhai'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('12:05 PM'),
                    SizedBox(height: 5,),
                    Container(
                      child: Center(child: Text('4',style: TextStyle(color: Colors.white,fontSize: 12),)),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    )
                  ],
                )

              );
            }
            ),

            ListView.builder(
                itemCount: 40,
                itemBuilder: (context , index){
                  return ListTile(
                    leading: Container(

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,

                        )

                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/5220075/pexels-photo-5220075.jpeg?auto=compress&cs=tinysrgb&w=300'),
                      ),
                    ),
                    title: Text('KHAN'),
                    subtitle: Text('kya kraha bhai'),
                    trailing: Text('10:05 PM'),

                  );
                }
            ),






            ListView.builder(
              itemCount: 20,
                itemBuilder: (context , index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
                ),
                title: Text('Ayesha'),
                subtitle: Row(
                  children: [
                    Icon(index /2 ==0 ? Icons.call_received : Icons.call_missed,color: Colors.red,),
                    Text('Today, 23:04')
                  ],
                ),

                trailing: Icon(index /2 == 0 ? Icons.call : Icons.video_call,color: Color(0xff0fce5e),),

                );

            }
            ),
          ],
        ),
      ),
    );
  }
}
