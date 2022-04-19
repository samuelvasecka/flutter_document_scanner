import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_document_scanner/src/document_scanner_controller.dart';

class ButtonChoosePhoto extends StatelessWidget {
  final bool hide;

  const ButtonChoosePhoto({
    Key? key,
    this.hide = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hide) {
      return Container();
    }

    return Positioned(
      bottom: 30,
      left: 0,
      right: 0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Material(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black.withOpacity(0.3),
            elevation: 0,
            child: IconButton(
                onPressed: () =>
                    context.read<DocumentScannerController>().choosePhoto(),
                icon: const Icon(
                  Icons.image,
                  size: 35,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }
}
