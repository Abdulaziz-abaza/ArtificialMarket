import 'package:artificial_app/constant/constants.dart';
import 'package:flutter/material.dart';

class RegisterWithPhoneViewbody extends StatefulWidget {
  @override
  _RegisterWithPhoneViewbodyState createState() =>
      _RegisterWithPhoneViewbodyState();
}

class _RegisterWithPhoneViewbodyState extends State<RegisterWithPhoneViewbody> {
  bool _agreedToTerms = false;
  String _selectedCountryCode = "+20"; // Default to Egypt

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Add help functionality
            },
            child: Text("need help?", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Your mobile number",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Please enter your mobile number to send you a verification code",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                // Country Code Selector
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButton<String>(
                    value: _selectedCountryCode,
                    items: [
                      DropdownMenuItem(child: Text("+20"), value: "+20"),
                      DropdownMenuItem(child: Text("+1"), value: "+1"),
                      DropdownMenuItem(child: Text("+44"), value: "+44"),
                      // Add more country codes as needed
                    ],
                    onChanged: (value) {
                      setState(() {
                        _selectedCountryCode = value!;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10),
                // Mobile Number Input
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: "Your mobile number",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Terms & Privacy Checkbox
            CheckboxListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Agree on ", style: TextStyle(fontSize: 10)),
                      GestureDetector(
                        onTap: () {
                          // Open Terms & Conditions
                        },
                        child: Text("Terms & Conditions",
                            style: TextStyle(
                                color: Color.fromARGB(255, 90, 53, 105),
                                fontSize: 10)),
                      ),
                      Text(" and ", style: TextStyle(fontSize: 10)),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Open Privacy Policy
                    },
                    child: Text("Privacy Policy",
                        style: TextStyle(
                            color: Color.fromARGB(255, 90, 53, 105),
                            fontSize: 10)),
                  ),
                ],
              ),
              value: _agreedToTerms,
              onChanged: (value) {
                setState(() {
                  _agreedToTerms = value!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            Spacer(),
            // Next Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _agreedToTerms
                    ? () {
                        // Handle next action
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      _agreedToTerms ? AppColors.primaryColor : Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Next",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
