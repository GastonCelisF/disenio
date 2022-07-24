import 'package:disenio/widgets/card_table.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/custom_bottom_navigation.dart';
import '../widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
   

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:[
         //background
         Background(),
          //Home Body
         _HomeBody(),
        ],
      ),
      //bottomnavigationbar:
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        //Titles
        PageTitle(),

        //Card Table
        CardTable(),
      ]),
    );
  }
}