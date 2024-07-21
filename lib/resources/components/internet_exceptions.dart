import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/colors/appColors.dart';

class InternetExceptions extends StatefulWidget {
  final VoidCallback onpress;
  const InternetExceptions({super.key, required this.onpress});

  @override
  State<InternetExceptions> createState() => _InternetExceptionsState();
}

class _InternetExceptionsState extends State<InternetExceptions> {
  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height * 1;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        children: [
          Icon(
            Icons.cloud_off,
            color: Colors.red,
            size: 50,
          ),
          Text(
            'Internet Excptions'.tr,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell( onTap:  widget.onpress ,
            child: Container(
              height: 60,
              width: 120,
              child: Center(
                child: Text('Retry',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white)),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Appcolors.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
