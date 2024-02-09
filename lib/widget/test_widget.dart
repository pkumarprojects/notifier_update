import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../entity/counter.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CloudService>(
      builder: (context, listner, child) {
        return Icon(
          listner.isUploading
              ? Icons.cloud_upload_outlined
              : Icons.cloud_queue_outlined,
          color: Colors.white,
        );
      },
    );
  }
}

class CloudService {
  bool _isUploading = false;

  bool get isUploading => _isUploading;
}
