import 'package:flutter/material.dart';

void doTrigger(int itemId, BuildContext context) {
      switch(itemId) {
        case 1:
        // Navigator.pushNamed(context,  restaurantsRoute);
        break;

        case 2:
        //Navigator.pushNamed(context, loginRoute);
        break;

       case 3:
                //Navigator.pushNamed(context, loginRoute);
        break;

      case 4:
                //Navigator.pushNamed(context, loginRoute);
        break;

      case 5:
                //Navigator.pushNamed(context, loginRoute);
        break;

      case 6:
                //Navigator.pushNamed(context, loginRoute);
        break;
         
      }
  }

//String getImage;


Widget browseitems( String text, String getImgPath,  int getSelection, BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(8.0),
     child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
       child: InkWell(
        onTap: (){doTrigger(getSelection, context);},
        splashColor: Colors.blueAccent,
        child: Center(
          child : Column(
            mainAxisSize: MainAxisSize.min,
          children: [
            Image(image: AssetImage(getImgPath),height: 50,width: 50,),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Text(text,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17.0),),
            ),
          ],
        )
        ),
      )
    ) 

  );
}

class Browse extends StatefulWidget {
  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(20),
    child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          browseitems('Hospitals','assets/hospital.png', 1, context),
          browseitems('Clinics','assets/hospital-.png', 2, context),
          browseitems('Laboratory','assets/bloodbag.png', 3, context),
          browseitems('Ambulance','assets/ambulance.png',4, context),
        ],
      ),
    );
  }  
}