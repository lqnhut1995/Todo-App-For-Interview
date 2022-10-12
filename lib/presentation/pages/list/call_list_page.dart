part of 'list_page.dart';

class CallListPage extends StatefulWidget {
  static const String route_id = '/calllist';

  @override
  State<StatefulWidget> createState() => _CallListPageState();
}

class _CallListPageState extends State<CallListPage> with AfterLayoutMixin {
  late CallBloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = CallBloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CallBloc>(
      create: (context) => _bloc..getToCallList(),
      child: BlocListener<CallBloc, CallState>(
        listener: (context, state) {
          state.status?.maybeMap(
            orElse: () => dismissLoading(),
            busy: (_) => showLoading(),
          );
        },
        child: BaseScaffold(
          appBar: AppBar(title: Text('Call List')),
          body: BlocBuilder<CallBloc, CallState>(
            buildWhen: (p, c) => p.callList != c.callList,
            builder: (_, state) {
              final callList = state.callList ?? [];
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.s, vertical: Spacing.l),
                itemCount: callList.length,
                itemBuilder: (_, i) => _CallItem(callList[i]),
                separatorBuilder: (_, i) => const Divider(
                  height: 50,
                  color: Colors.grey,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    _bloc.state.status?.maybeMap(
      orElse: () => dismissLoading(),
      busy: (_) => showLoading(),
    );
  }
}

class _CallItem extends StatelessWidget {
  final ToCall item;

  _CallItem(this.item);

  @override
  Widget build(BuildContext context) {
    final name = 'Name: ${item.name ?? ''}';
    final number = 'Number: ${item.number ?? ''}';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        vSpaceS,
        Text(number),
        vSpaceS,
      ],
    );
  }
}
