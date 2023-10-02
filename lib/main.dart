import 'package:flutter/material.dart';

void main() => runApp(const AlertDialogApp());

class AlertDialogApp extends StatelessWidget {
  const AlertDialogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: Color.fromARGB(255, 104, 184, 135), useMaterial3: true),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 150, 204, 225),
        appBar: AppBar(title: const Text('Dialogo Alerta'),
        ),
        body: const Center(
          child: Dialog(),
        ),
      ),
    );
  }
}

class Dialog extends StatelessWidget {
  const Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Ha pulsado el Botón'),
          content: const Text('Usted ha pulsado el botón'),
          actions: <Widget>[
            TextButton(style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  foregroundColor: Colors.amber,
                  backgroundColor:Colors.white,
                  padding: EdgeInsets.all(16),
                  ),
              onPressed: () => Navigator.pop(context, 'Cancelar'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  foregroundColor: Colors.amber,
                  backgroundColor:Colors.white,
                  padding: EdgeInsets.all(16),
                  ),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    
      label: Column(
        children: <Widget>[
          Icon(Icons.hail_rounded, size: 30,),
          Text("Click",
      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)
          )
        ],
      )
                    );    
  } 
}





/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/dialog_alert.dart';


void main(){ runApp(myApp());}


class myApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: AlertDialogh.id,
      routes:{
        AlertDialogh.id: (context) => AlertDialogh(),
      }
    );
  }
}*/
  
/*
class SwipperPage extends StatefulWidget{
  static String id = 'swipper_page';
  @override
  _SwipperPageState createState() => _SwipperPageState();
  
  
  
}
  class _SwipperPageState extends State<SwipperPage>{
      @override
      Widget build(BuildContext context){
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Boton'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  foregroundColor: Colors.amber,
                  padding: EdgeInsets.all(16),
                  ),
                  onPressed:(){
                    setState((){

                    });
                  },
                  child: Text("Prueba",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
                  ),
                )
              ]
              ),
            ),
          ),
        );
      }
}*/