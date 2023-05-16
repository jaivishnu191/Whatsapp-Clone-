import 'package:flutter/material.dart';

import 'package:whatsappcloneapp/models/status.dart';

class Status extends StatefulWidget {
  const Status({super.key}); 

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vishnuDatastatus.length,
      itemBuilder: (BuildContext context, i)=>Column(
       children: [
        Divider(height: 20.0),
       ListTile(
        leading: CircleAvatar(
         maxRadius: 30,
         backgroundImage: NetworkImage(vishnuDatastatus[i].dp), 
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
            Text(vishnuDatastatus[i].name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            
          ],
        ),
                subtitle: Text(vishnuDatastatus[i].time),    
 
       ), 
       ],        
      )
    );
  }
}