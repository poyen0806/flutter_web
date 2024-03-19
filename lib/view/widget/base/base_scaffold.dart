import 'package:flutter/material.dart';
import 'package:flutter_web/view/widget/base/base_app_bar.dart';
import 'package:flutter_web/view_model/platform_view_model.dart';
import 'package:provider/provider.dart';

class BaseScaffold extends StatefulWidget {
  /// 已套用一些基本設定如 [BaseAppBar]、[BaseDrawer] 等，
  /// 所有需要使用 [Scaffold] 的頁面都應該改用這個 [BaseScaffold]。
  ///
  /// **注意：**\
  /// 這個 Widget 將會在 [body] 外加上一層 [SingleChildScrollView]，
  /// 若在頁面中需要垂直展示多個元件，請直接傳入 [Column] 即可。
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
    // 時時取得裝置寬度，並設定給 [PlatformViewModel]
    final size = MediaQuery.of(context).size;
    context.read<PlatformViewModel>().size = size;
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
