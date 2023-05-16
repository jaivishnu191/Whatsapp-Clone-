
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsappcloneapp/screens/call.dart';
import 'package:whatsappcloneapp/screens/chatpage.dart';
import 'package:whatsappcloneapp/screens/group.dart';
import 'package:whatsappcloneapp/screens/status.dart';

class Whatsapphome extends StatefulWidget {
  const Whatsapphome({super.key});

  @override
  State<Whatsapphome> createState() => _WhatsapphomeState();
}

class _WhatsapphomeState extends State<Whatsapphome> with SingleTickerProviderStateMixin {
  late TabController  vishnucontroller;
@override
  void initState() { 
    // TODO: implement initState
    super.initState();
    vishnucontroller=TabController(initialIndex: 1,length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        backgroundColor:Color(0xff075E54),
        title: const Text('WhatsApp',style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){},
           icon:const  Icon(Icons.search)),
            IconButton(onPressed: (){},
           icon: const Icon(Icons.chat)),
            IconButton(onPressed: (){},
           icon:const  Icon(Icons.more_vert)),
   
        ],
        bottom:  TabBar(
          indicatorColor: Colors.white,
          controller: vishnucontroller ,
          tabs: [
            
        const Tab(icon: Icon(Icons.groups_3, ),),
        const Tab(child: Text('Chats',style:TextStyle(color: Colors.white),),),
        Tab(child: Text('Status',style :Theme.of(context).textTheme.button),),
        Tab(child: Text('Call',style:Theme.of(context).textTheme.button),),


 
        

        ]),
        systemOverlayStyle: const  SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light
        ),
      ),

      body: TabBarView(
        controller: vishnucontroller,
        children: const [
          Group(),
          ChatScreen(),
          Status(),
          CallScreen()
        ],
      ),
    );
  }
}

