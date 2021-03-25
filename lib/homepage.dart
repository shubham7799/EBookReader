
import 'package:epub_viewer/epub_viewer.dart';

import 'package:flutter/material.dart';

import 'summary.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  bool isReviewActive=true;

  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          padding: EdgeInsets.only(top: 20),
          color: Color(0xffbf4f4f4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {  },),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: 
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [  
                  InkWell(
                    onTap: () async {
                      EpubViewer.setConfig(
                        themeColor: Theme.of(context).primaryColor,
                        scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
                        allowSharing: true,
                        enableTts: true,
                          nightMode: false);
                      await EpubViewer.openAsset('assets/Test.epub');
                    //   EpubViewer.locatorStream.listen((locator) {
                    //   print(
                    //       'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
                    // });
                    },
                    child: Container(
                      child: Container(height: 200,width:120,color:Color(0xffbbec2ce)),
                      padding: EdgeInsets.all(4) ,
                      margin: EdgeInsets.only(right: 20),
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 208,
                      child: Column(
                        
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Desvendado Princeas",style: TextStyle(fontSize: 24),),
                                  SizedBox(height: 3,),
                                  Text("By Flower Books",style: TextStyle(fontSize: 16),),
                                ],
                              ),
                            ),
                          ),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(children: [
                              Text("Episodes",style: TextStyle(color: Color(0xffbbec2ce)),),
                              Text("55",style: TextStyle(fontWeight: FontWeight.bold),)],),
                              
                              Expanded(
                                child: Column(children: [
                                Text("Views",style: TextStyle(color: Color(0xffbbec2ce))),
                                Text("220",style: TextStyle(fontWeight: FontWeight.bold),)],),
                              ),
                      
                              Column(children: [
                              Text("Rating",style: TextStyle(color: Color(0xffbbec2ce))),
                              Text("5.0",style: TextStyle(fontWeight: FontWeight.bold),)],),
                            ],
                          ),
                          SizedBox(height: 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                            IconButton(icon: Icon(Icons.favorite),onPressed: (){},),
                            IconButton(icon: Icon(Icons.share),onPressed: (){},),
                          ],)
                        ],
                      ),
                    ),
                  ),
                  
                ],),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => BookSummary()),);
                        },
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),
                            topLeft: Radius.circular(8))),
                          child: Center(
                            child: Text(
                              "Summary",style: TextStyle(fontSize: 18,color: Colors.black38),),
                          )),
                      ),
                    ),
                    SizedBox(width: 2,),
                    Expanded(
                      child: InkWell(
                            onTap: (){
                              setState((){
                                isReviewActive=!isReviewActive;
                              });
                            },
                            child: Container(
                        height: 30,
                        color: Colors.white,
                        child: Center(
                          child:Text(
                              "Episodes",style: 
                              TextStyle(fontSize: 18,
                                color: isReviewActive? Colors.black38:Colors.black87),),
                          ),
                        )),
                    ),
                    SizedBox(width: 2,),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                              setState((){
                                isReviewActive=!isReviewActive;
                              });
                            },
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(8),
                              topRight: Radius.circular(8))),
                          child: Center(
                            child: Text(
                              "Reviews",style: TextStyle(fontSize: 18,
                              color: isReviewActive? Colors.black87:Colors.black38),),
                          )),
                      ),
                    ),
                ],),
              ),
              isReviewActive ? ReviewTab():EpisodesTab(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: 0,
       selectedItemColor: Colors.black87,
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.search),
           title: new Text('Discover'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.widgets),
           title: Text('Library')
         )
       ],
     ),
    );
  }

  ReviewTab() {
    return Column(children: [
      widgetComment(),
      widgetComment(),
      widgetComment(),
      Container(
        margin: EdgeInsets.only(right: 10.0,left: 10.0,bottom:10.0),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text("Leave a comment",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    minLines: 3,
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: "Do you want to write something?",
                      fillColor: Color(0xffbf4f4f4),
                      filled: true,
                      border: InputBorder.none
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xffbb1adb0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  )
                )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30.0),
                  child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 18),),
                ),)
              ]
            ),
          ),
        ),
      )
    ],);  
  }
  
  EpisodesTab() {
    return Container();
  }

  widgetComment(){
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
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
          ),
        ),
      );
  }

}

