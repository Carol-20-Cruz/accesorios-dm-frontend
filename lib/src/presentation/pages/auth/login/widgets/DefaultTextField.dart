import 'package:flutter/material.dart';
const Color colorPrincipalDM = Color(0xFFC89B3C);
class DefaultTextField extends StatelessWidget {
  String label;
  IconData icon;
  bool obscureText;

  Function(String text) onChanged;
 DefaultTextField({
  required this.label,
  required this.icon,
  required this.onChanged,
  this.obscureText = false
 });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      onChanged:(text) {
        onChanged(text);
      },
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        icon,
                        color: colorPrincipalDM,
                      ),
                      label: Text(label),
                
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    style:TextStyle(
                      color: Colors.white
                    ),
                  );
  }
}