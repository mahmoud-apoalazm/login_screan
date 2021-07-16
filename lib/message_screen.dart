import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messsage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.camera_alt,
                  size: 16,
                  color: Colors.white,
                )),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                )),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Search")
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>buildStoryItems(),
                  separatorBuilder: (context,index)=>SizedBox(width: 20.0,),
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 40.0,
              ),
               ListView.separated(
                 physics:NeverScrollableScrollPhysics() ,
                 shrinkWrap: true,
                    itemBuilder: (context,index)=>buildChatItems(),
                    separatorBuilder: (context,index)=>SizedBox(height: 20.0,),
                    itemCount: 10),



              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 60,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               "Mahmoud Abo Alazm",
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               "Mahmoud Abo Alazm",
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               "Mahmoud Abo Alazm",
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               "Mahmoud Abo Alazm",
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               "Mahmoud Abo Alazm",
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               "Mahmoud Abo Alazm",
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         SizedBox(
              //           height: 30.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     "mahmoud apoalazm ",
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(child: Text("hello my name is ahmed welcom")),
              //                       Padding(
              //                         padding:
              //                             const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Container(
              //                           width: 7.5,
              //                           height: 7.5,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blueAccent,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding:
              //                             const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Text("02.00 pm"),
              //                       )
              //                     ],
              //                   ),
              //                   SizedBox(height: 10.0,),
              //
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(height: 10.0,),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     "mahmoud apoalazm ",
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(child: Text("hello my name is ahmed welcom")),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Container(
              //                           width: 7.5,
              //                           height: 7.5,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blueAccent,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Text("02.00 pm"),
              //                       )
              //                     ],
              //                   ),
              //                   SizedBox(height: 10.0,),
              //
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(height: 10.0,),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     "mahmoud apoalazm ",
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(child: Text("hello my name is ahmed welcom")),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Container(
              //                           width: 7.5,
              //                           height: 7.5,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blueAccent,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Text("02.00 pm"),
              //                       )
              //                     ],
              //                   ),
              //                   SizedBox(height: 10.0,),
              //
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(height: 10.0,),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     "mahmoud apoalazm ",
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(child: Text("hello my name is ahmed welcom")),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Container(
              //                           width: 7.5,
              //                           height: 7.5,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blueAccent,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Text("02.00 pm"),
              //                       )
              //                     ],
              //                   ),
              //                   SizedBox(height: 10.0,),
              //
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(height: 10.0,),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     "mahmoud apoalazm ",
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(child: Text("hello my name is ahmed welcom")),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Container(
              //                           width: 7.5,
              //                           height: 7.5,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blueAccent,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Text("02.00 pm"),
              //                       )
              //                     ],
              //                   ),
              //                   SizedBox(height: 10.0,),
              //
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(height: 10.0,),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     "mahmoud apoalazm ",
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(child: Text("hello my name is ahmed welcom")),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Container(
              //                           width: 7.5,
              //                           height: 7.5,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blueAccent,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Text("02.00 pm"),
              //                       )
              //                     ],
              //                   ),
              //                   SizedBox(height: 10.0,),
              //
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(height: 10.0,),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     "mahmoud apoalazm ",
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(child: Text("hello my name is ahmed welcom")),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Container(
              //                           width: 7.5,
              //                           height: 7.5,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blueAccent,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Text("02.00 pm"),
              //                       )
              //                     ],
              //                   ),
              //                   SizedBox(height: 10.0,),
              //
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(height: 10.0,),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     "mahmoud apoalazm ",
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(child: Text("hello my name is ahmed welcom")),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Container(
              //                           width: 7.5,
              //                           height: 7.5,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blueAccent,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding:
              //                         const EdgeInsets.symmetric(horizontal: 10.0),
              //                         child: Text("02.00 pm"),
              //                       )
              //                     ],
              //                   ),
              //                   SizedBox(height: 10.0,),
              //
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildChatItems()=>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "mahmoud apoalazm ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(child: Text("hello my name is ahmed welcom")),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 7.5,
                    height: 7.5,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("02.00 pm"),
                )
              ],
            ),
            SizedBox(height: 10.0,),

          ],
        ),
      ),
    ],
  );
  Widget buildStoryItems()=>Container(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://www.pngarts.com/files/5/Avatar-Face-PNG-Background-Image.png'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          "Mahmoud Abo Alazm",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );




}
