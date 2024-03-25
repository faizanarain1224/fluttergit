import 'package:flutter/material.dart';

class Categorycard extends StatelessWidget {
  final String title,image;
  final VoidCallback press;
  const Categorycard({
    Key? key, required this.title, required this.image, required this.press,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 55,
            width: 150,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(100),
            ),
            child:Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                    AssetImage(image),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(title,style: const TextStyle(fontSize: 16,fontWeight:FontWeight.bold),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}