// The MIT License (MIT)
//
// Copyright (c) 2020 kokohuang
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

import 'package:flutter/cupertino.dart';

import 'easy_loading.dart';
import 'theme.dart';

class LoadingIndicator extends StatefulWidget {
  const LoadingIndicator();

  @override
  _LoadingIndicatorState createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator> {
  final double _size = EasyLoadingTheme.indicatorSize;

  /// indicator color of loading
  final Color _indicatorColor = EasyLoadingTheme.indicatorColor;

  late Widget? _indicator;

  @override
  void initState() {
    super.initState();

    switch (EasyLoadingTheme.indicatorType) {
      case EasyLoadingIndicatorType.material:
      case EasyLoadingIndicatorType.cupertino:
        _indicator = const CupertinoActivityIndicator();
        break;
      default:
        _indicator = const CupertinoActivityIndicator();
    }
  }

  @override
  void dispose() {
    _indicator = null;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _width = _size;
    return Container(
      color: _indicatorColor,
      child: _indicator,
      constraints: BoxConstraints(maxWidth: _width),
    );
  }
}
