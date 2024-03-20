import 'package:flutter/material.dart';
import 'package:flutter_web/view/widget/base/base_app_bar.dart';
import 'package:flutter_web/view_model/platform_view_model.dart';
import 'package:provider/provider.dart';

/// The base scaffold of the app
class BaseScaffold extends StatefulWidget {
  const BaseScaffold({
    super.key,
    this.body,
    this.floatingActionButton,
    this.bottomPadding = 50.0,
    this.contentPadding = true,
  });

  final Widget? body;
  final Widget? floatingActionButton;
  final double bottomPadding;
  final bool contentPadding;

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // get the size of the screen and set it to the view model
    final size = MediaQuery.of(context).size;
    context.read<PlatformViewModel>().size = size;

    // get the side padding from the view model
    final sidePadding = context.read<PlatformViewModel>().sidePadding;

    return Scaffold(
      appBar: const BaseAppBar(),
      floatingActionButton: widget.floatingActionButton,
      body: Stack(
        children: [
          ListView(
            children: [
              ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: size.height - kToolbarHeight),
                child: Container(
                  padding: widget.contentPadding
                      ? EdgeInsets.only(
                          left: sidePadding,
                          right: sidePadding,
                          bottom: widget.bottomPadding,
                        )
                      : null,
                  child: widget.body,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
