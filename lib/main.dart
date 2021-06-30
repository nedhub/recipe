import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6D55C),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(children: <Widget>[
                Text("Food of the Day",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ))
              ])),
          SizedBox(
            height: 40.0,
          ),
          Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(75.0),
                      topRight: Radius.circular(75.0))),
              child: ListView(
                  padding: EdgeInsets.only(left: 25.0, right: 20.0),
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 45.0),
                        child: Container(
                            height: MediaQuery.of(context).size.height - 300.0,
                            child: ListView(children: [
                              _buildFoodItem(
                                  'https://www.simplyrecipes.com/thmb/hGHrTRrT7yY_Q9SuY1Gb4-uMN9A=/1600x1067/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2013__02__pasta-puttanesca-fork-horiz-1600-aeb7e018a32b4bc2ae85ea893cabdb40.jpg',
                                  'Pasta',
                                  '\$26.00'),
                              SizedBox(
                                height: 30,
                              ),
                              _buildFoodItem(
                                  'https://www.wholesomelicious.com/wp-content/uploads/2021/02/Vegetable-Garden-Pasta-Picture4.jpg',
                                  'Pasta 2',
                                  '\$27.00'),
                              SizedBox(
                                height: 30,
                              ),
                              _buildFoodItem(
                                  'https://d47gxy3fatgwk.cloudfront.net/wp-content/uploads/2015/08/rice-in-bowl-horiz-with-spoon-copy.jpg',
                                  'Rice',
                                  '\$28.00'),
                              SizedBox(
                                height: 30,
                              ),
                              _buildFoodItem(
                                  'https://cooktoria.com/wp-content/uploads/2019/01/Chicken-Rice-Casserole-8.jpg',
                                  'Chicken Rice Casserole',
                                  '\$32.00')
                            ])))
                  ])),
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: InkWell(
              onTap: () {
                // Navigator.of(context).push();
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        child: Row(children: [
                      Hero(
                          tag: imgPath,
                          child: Image(
                            image: NetworkImage(imgPath),
                            fit: BoxFit.cover,
                            height: 75.0,
                            width: 75.0,
                          )),
                      SizedBox(width: 10.0),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(foodName,
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(price,
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.grey)),
                          ])
                    ])),
                    IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.black,
                        onPressed: () {})
                  ]))),
    );
  }
}
