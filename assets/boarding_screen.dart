import 'package:flutter/material.dart';
import 'package:untitled/slide.dart';

class BoardingPage extends StatefulWidget {

  @override
  _BoardingScreenState createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingPage> {
  int _currentPage = 0;
  List<Slide> _slides = [];
  PageController _pageController = PageController();

  @override
  void initState(){
    _currentPage = 0;
    _slides = [
      Slide("pic3.jpg","Making your \nhelping-out journey \neasier"),
      Slide("pic4.jpg","It takes YOU \nto make hope possible"),
      Slide("pic5.jpg","Inspiring greatness, \none gift at a time"),
    ];
    _pageController = PageController(initialPage: _currentPage);
    super.initState();
  }

  List<Widget> _buildSlides()
  {
    return _slides.map(_buildSlide).toList();
  }

  Widget _buildSlide(Slide slide)
  {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(margin: EdgeInsets.fromLTRB(32, 60, 32, 32),
          child: Image.asset(slide.image, fit: BoxFit.contain,),
          ),
        ),
        SizedBox(height: 60,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 70),
          child: Text(
            slide.heading,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Bebas_Neue',
              fontWeight: FontWeight.w800,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ),
        SizedBox(height: 140,),
      ],
    );
  }
  void _handlingOnPageChanged(int page)
  {
    setState(() => _currentPage = page);
  }

  Widget _buildPageIndicator() {
    Row row = Row(mainAxisAlignment: MainAxisAlignment.center, children: []);
    for(int i = 0; i < _slides.length; i++){
      row.children.add(_buildPageIndicatorItem(i));
      if(i != _slides.length -1)
        row.children.add(SizedBox(
          width: 12,
        ));
    }
    return row;
  }

  Widget _buildPageIndicatorItem(int index)
  {
    return Container(
      width: index == _currentPage ? 8 : 5,
      height: index == _currentPage? 8 : 5,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == _currentPage
          ? Color.fromRGBO(136, 144, 178, 1)
            : Color.fromRGBO(206, 209, 223, 1)
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _pageController,
            onPageChanged: _handlingOnPageChanged,
            //physics: BouncingScrollPhysics(),
            children: _buildSlides(),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: <Widget>[
                _buildPageIndicator(),
                SizedBox(
                  height: 32,
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange.shade700,
                        Colors.orange.shade900
                      ],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Spartan',
                      ),
                    ),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 32),
                //   child: SizedBox(
                //     width: double.infinity,
                //     child: RaisedButton(
                //       onPressed: (){},
                //       color: Colors.grey[800],
                //       child: Text('Get Started',
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 18,
                //         letterSpacing: 4,
                //         //color: Colors.white,
                //       ),
                //       ),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(100),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

