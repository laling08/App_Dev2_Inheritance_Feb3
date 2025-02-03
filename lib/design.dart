import 'package:flutter/material.dart';

void main () {
  runApp(MyDesign());
}

class MyDesign extends StatelessWidget {
  const MyDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLakeView(),
    );
  }
}

class MyLakeView extends StatelessWidget {
  const MyLakeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // If we have a big text it will implement a scroll bar
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/lake.jpg',
              width: 600, height: 250,
              fit: BoxFit.cover,),

            Padding(
                padding: EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded (
                  // If there is an extra space from the parent
                  // Expanded uses to build it own widget
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(8),
                        child: Text('Oeschine Lake Campground',
                        style: TextStyle(fontWeight: FontWeight.bold),),),
                        Text('Kandersteg, Switzerland', style: TextStyle(color:Colors.grey[500]),)
                      ],
                    )),
                Row(
                  // Now I am using a new term which is main Axiz Size,
                  // it will be used to control the size of the widget in the
                  // given space
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    SizedBox(width: 10, child: Text('41'),)
                  ],
                )
              ],
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call, color: Colors.blue,
                    ),
                    Padding(padding: EdgeInsets.only(top: 8),
                    child: Text('CALL',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),)
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.near_me, color: Colors.blue,
                    ),
                    Padding(padding: EdgeInsets.only(top: 8),
                      child: Text('ROUTE',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),)
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.share, color: Colors.blue,
                    ),
                    Padding(padding: EdgeInsets.only(top: 8),
                      child: Text('SHARE',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),)
                  ],
                ),
              ],
            ),

            Padding(
                padding: EdgeInsets.all(32),
            child: Text('wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov wnvs vndosvnsonvnvskndvnv sovsnvvnvosav ossvsvosvnsnvsl vsvsvs'
                'snvsvnsnv smvslmvsvnlsnvslnvsov '
                '',softWrap: true,),
            )
          ],
        ),
      ),
    );
  }
}

