import 'package:directed_graph/directed_graph.dart';
import 'vars.dart';
import 'package:graphs/graphs.dart';
import 'package:dijkstra/dijkstra.dart';

int CalculateRoute(String? startStation, String? endStation) {
  int time = 0;
  if (startStation == null || endStation == null) {
    return -1;
  }

  final List<dynamic> path =
      Dijkstra.findPathFromGraph(graph, startStation, endStation);
  for (int i = 0; i < path.length - 1; i++) {
    String curStation = path[i];
    String nextStation = path[i + 1];
    int curTime = graph[curStation][nextStation];
    time += curTime;
    // time = (time + graph[curStation][path[i + i]]) as int;
  }
  // print(time);
  // final List<String> lightestPath =
  // graph.lightestPath(startStation, endStation);

  return time - 15;
  // return graph.weightAlong(lightestPath);
}
