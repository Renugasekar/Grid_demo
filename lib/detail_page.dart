import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Chennai'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset('assets/marina.jpg',
          height:300,
          fit:BoxFit.cover,),
          titleSection(),
          buttonSection(),
          textSection(),
        ]
      ),
    );
  }
}
Widget titleSection(){
  return Container(
    padding: EdgeInsets.all(24.0),
    child:Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
            Container(
              child: Text('Chennai',
              style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),),
              ],
            ),
          ),
            Icon(Icons.star,color:Colors.red[500]),
            Text('5',style: TextStyle(
              fontWeight: FontWeight.bold,),)
        ],
        ),
      );
}
Widget buttonSection(){
  return Container(
    child: Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
        buttonColumn(Icons.call,'CALL'),
        buttonColumn(Icons.near_me,'ROUTE'),
        buttonColumn(Icons.share,'SHARE'),
      ],
      ),
  );
}

buttonColumn(IconData icon, String label) {
return InkWell(
  onTap: (){},
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment:MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon,color: Colors.pink,),
        Container(
          margin: EdgeInsets.only(top:8),
          child: Text(label,
          style:TextStyle(
            fontSize: 12,
            color:Colors.pink,
            fontWeight: FontWeight.bold)),
          )
      ],
      ),
  ),
);
}
Widget textSection(){
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Text('Chennai also known as Madras (the official name until 1996), is the capital city of the Indian state of Tamil Nadu. The state\'s largest city in area and population as well, Chennai is located on the Coromandel Coast of the Bay of Bengal, and is the most prominent cultural, economic and educational centre of South India.According to the 2011 Indian census, Chennai is the sixth-most populous city in the country and forms the fourth-most populous urban agglomeration. The Greater Chennai Corporation is the civic body responsible for the city; it is the oldest city corporation of India, established in 1688—the second oldest in the world after London. The city of Chennai is coterminous with Chennai district, which together with the adjoining suburbs constitutes the Chennai Metropolitan Area, the 36th-largest urban area in the world by population and one of the largest metropolitan economies of India. It is one of the 100 Indian cities to be developed as a smart city under the Smart Cities Mission.',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    ),
  );

}