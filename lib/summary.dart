import 'package:flutter/material.dart';

class BookSummary extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*3/4,
                    
              decoration: BoxDecoration(
                color: Color(0xffb838589),
                borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(8),
                bottomLeft: Radius.circular(8)),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top:20),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios), 
                        onPressed: () { Navigator.of(context).pop(); },
                      ),
                      SizedBox(height:MediaQuery.of(context).size.height/4 ,),
                      Center(child: Text("The Camp",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),)),
                      Center(child: Text("By John",style: TextStyle(color:Colors.white),)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 24),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(children: [
                            Text("Rating",style: TextStyle(color: Colors.white),),
                            Text("5.0",style: TextStyle(fontWeight: FontWeight.bold),)],),
                                
                            Expanded(
                              child: Column(children: [
                              Text("Page",style: TextStyle(color: Colors.white)),
                              Text("220",style: TextStyle(fontWeight: FontWeight.bold),)],),
                            ),
                        
                            Column(children: [
                              Text("Views",style: TextStyle(color: Colors.white)),
                              Text("1728",style: TextStyle(fontWeight: FontWeight.bold),)],),
                            ],
                          ),
                          
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(icon: Icon(Icons.favorite),onPressed: (){},),
                          IconButton(icon: Icon(Icons.share),onPressed: (){},),
                        ],
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 14),
                          padding: EdgeInsets.symmetric(vertical: 14,horizontal: 12),
                          width: MediaQuery.of(context).size.width*9/10,
                          decoration: BoxDecoration(
                            color: Color(0xffbeae7e7),
                            borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24),
                            topLeft: Radius.circular(24)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color(0xffbcd64a5)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              )
                            )),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal:24.0,vertical: 4),
                                child: Text("Buy For \$62.8",style: TextStyle(color: Colors.white,fontSize: 18),),
                              ),),
                                SizedBox(height: 14,),
                                Text('Summary',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 14,),
                                Text('"I heard you."\n"It was a little misunderstanding"\n"You had a fight."\n"We made up this morning",I concede, knowing that we can argue about the meaning of the fight for the entire two hours like Kiki time.\nShe showels a few more spoonfuls into her mouth before she goes on: "I avoid like it when you fight."',
                                  style: TextStyle(color: Colors.black45),),
                                widgetComment(),
                                widgetComment(),
                                Container(
            padding: EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
              Container(
                margin: EdgeInsets.only(top:6,right:10.0,bottom: 10.0),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12,),
                Text('Flower Books',style: TextStyle(fontSize: 16, color: Colors.black87),),
                SizedBox(height: 2,),
                TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xffbb1adb0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  )
                )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:4.0),
                  child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 12),),
                ),)
              ],)
            ],),
          ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  widgetComment(){
    return Container(
            padding: EdgeInsets.symmetric(vertical:12.0,horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Container(
                    margin: EdgeInsets.only(top:6,right:10.0,bottom: 10.0),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffbbec2ce),
                      shape: BoxShape.circle,)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Carlos Day',style: TextStyle(fontSize: 16, color: Colors.black87),),
                    SizedBox(height: 2,),
                    Text('5 days ago',style: TextStyle(color: Colors.black45))
                  ],)
                ],),
                Text("Love it !!!\nI have a chance to my knowlwdge. Thank")
              ]
            ),
          );
  }

}