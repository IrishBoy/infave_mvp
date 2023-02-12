import 'package:directed_graph/directed_graph.dart';
import 'vars.dart';
import 'package:graphs/graphs.dart';

int CalculateRoute(String? startStation, String? endStation) {
  // int time = 0;
  if (startStation == null || endStation == null) {
    return -1;
  }
  final List<String> lightestPath =
      graph.lightestPath(startStation, endStation);

  return graph.weightAlong(lightestPath);
}
