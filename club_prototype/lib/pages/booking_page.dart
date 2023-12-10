import 'package:club_prototype/widgets/members_selection.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 500, // Set a specific height or constraints for the widget
            child: CheckBoxListWithDropDown(),
          ),
          TextField(
            controller: _dateController,
            decoration: InputDecoration(
              labelText: "DATE",
              filled: true,
              prefixIcon: Icon(Icons.calendar_today),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)),
            ),
            readOnly: true,
            onTap: () {
              _selectDate();
            },
          ),
          SizedBox(height: 20,),

          ElevatedButton(onPressed:(){
            // alert dialog will go here 
            
          } , child: Text("Book now "))
        ],

        
      ),

      

    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2100));

    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}



// single entry 



// couple entry 



// group party 


  // aadhar card verificaation for each 







