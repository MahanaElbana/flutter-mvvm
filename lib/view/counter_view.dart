import 'package:flutter/material.dart';
import 'package:flutter_mvvm/repository/posts/posts_api.dart';
import 'package:flutter_mvvm/view_model/counter_view_model.dart';

//  ---  counter_view.dart --- //
class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //--- --- -- instance of counter_View_model --  ----- ---//
    CounterViewModel _counterViewModel = CounterViewModel();
    //----- ---- --- --- --- - ---- --- --- --- - -- --- --- -- //
    return Scaffold(
      //---- appBar ---//
      appBar: AppBar(
        title: Text(
          _counterViewModel.title,
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      //--- body ----//
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),

            //-- view && ViewModel ------------//
            StatefulBuilder(
              builder: (context, setState) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // --- increment UI (action) ---//
                  IconButton(
                    onPressed: () async{
                      var p = new PostsApi();
                      var postmodelData = await p.getAllPosts();
                      print(postmodelData[0].completed.toString()) ;
                      
                      setState(() => _counterViewModel.increment());
                    },
                    icon: Icon(Icons.add, color: Colors.purple[900]!),
                  ),

                  // --- get state (count) UI ---//
                  Text(
                    'count : ${_counterViewModel.getCount}',
                    style: TextStyle(
                        color: Colors.green[500]!,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),

                  // --- decrement UI (action) ---//
                  IconButton(
                    onPressed: () =>
                        setState(() => _counterViewModel.decrement()),
                    icon: Icon(
                      Icons.remove,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            /// --------- ----////                       // 4 //
          ],
        ),
      ),
    );
  }
}
