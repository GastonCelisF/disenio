import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
        children: [
          //Imagen
          Image(image: AssetImage('assets/landscape.jpg')),

          //Title
          Title(),

          // Area de los botones
          ButtonSection(),

          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Enim do sint adipisicing adipisicing aliquip et sit irure commodo ex ut voluptate quis ea. Velit aliquip tempor adipisicing ipsum voluptate aliqua nostrud exercitation cillum incididunt. Commodo ad quis exercitation officia dolor reprehenderit quis voluptate in non do. Culpa ut magna ipsum ut irure commodo. Consectetur tempor aute ad exercitation ullamco nisi occaecat tempor tempor et exercitation veniam exercitation. Culpa magna nisi eu ex et tempor.'))

        ],
      )
   );
  }
}



class Title extends StatelessWidget {
  
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,  vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style:TextStyle(fontWeight: FontWeight.bold )),
              Text('Kandersteg, Switzerland',style: TextStyle(color: Colors.black45),),
            ],
          ),
          Expanded(child: Container()),

          Icon(Icons.star,color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        CustomButton(icon: Icons.call,text: 'Call',),
        CustomButton(icon: Icons.map_sharp,text: 'Route',),
        CustomButton(icon: Icons.share,text: 'Share',),
      ],),
    );
  }
}

class CustomButton extends StatelessWidget {

final IconData icon;
final String text;

  const CustomButton({
    Key? key,
     required this.icon,
     required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color:Colors.blue,size: 30,),
        Text(text,style: TextStyle(color:Colors.blue),)
      ],
    );
  }
}