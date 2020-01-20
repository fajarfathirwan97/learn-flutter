import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/Bloc/CounterBloc.dart';
import 'package:learn_flutter/Screen/TodoScreen.dart';
import 'package:learn_flutter/Screen/UserScreen.dart';

class HomeScreen extends StatelessWidget {
  BuildContext _context;

  void _navigateToListUser() {
    Navigator.push(
        _context, MaterialPageRoute(builder: (_context) => TodoScreen()));
  }

  @override
  Widget build(BuildContext context) {
    this._context = context;
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('HEADER'),
            ),
            ListTile(
              title: Text('LIST USER'),
              onTap: this._navigateToListUser,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: FloatingActionButton(
              heroTag: 'INCREMENT',
              child: Icon(Icons.add),
              onPressed: () {
                counterBloc.dispatch(CounterEvent.increment);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: FloatingActionButton(
              heroTag: 'DECREMENT',
              child: Icon(Icons.remove),
              onPressed: () {
                counterBloc.dispatch(CounterEvent.decrement);
              },
            ),
          )
        ],
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, count) {
          return Center(
            child: Text('$count'),
          );
        },
      ),
    );
  }
}
