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
      bottom: 20,
      left: 0,
      right: 0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 86),
          child: IconButton(
              onPressed: () =>
                  context.read<DocumentScannerController>().choosePhoto(),
              icon: const Icon(Icons.image)),
        ),
      ),
    );
  }
}
