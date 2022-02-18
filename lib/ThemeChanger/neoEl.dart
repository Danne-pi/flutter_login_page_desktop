

import 'package:flutter/material.dart';

import '../constants.dart';

class NovaElly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25.0),
      child: Container(
        child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom:20.0),
                                            child: Text('NOVA',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 86,
                                              fontFamily: 'Aware',
                                              height: 0.8
                                            ),),
                                          ),
                                           Padding(
                                             padding: const EdgeInsets.only(left:16.0),
                                             child: Text('ELLYSIUM',
                                             textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 50,
                                              height: 0.3,
                                              fontFamily: 'Aware'
                                          ),),
                                           ),

                                           Padding(
                                             padding: const EdgeInsets.only(left:23),
                                             child: Container(
                                               width: 286,
                                               child: Divider(
                                                 color: Colors.white,
                                                 thickness: 2,
                                               ),
                                             ),
                                           ),
                                        ],
                                      ),
      ),
    );
  }
}