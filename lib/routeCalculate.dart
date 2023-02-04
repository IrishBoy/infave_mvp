import 'package:directed_graph/directed_graph.dart';

final a = 'a';
final b = 'b';
final c = 'c';
final d = 'd';
final e = 'e';
final f = 'f';
final i = 'i';
final k = 'k';
final l = 'l';

int sum(int left, int right) => left + right;
var graph = WeightedDirectedGraph<String, int>(
  {
    a: {a: 0, b: 1},
    b: {b: 0, a: 1, c: 2},
    c: {c: 0, b: 2, d: 3},
    d: {d: 0, c: 3, e: 2},
    e: {e: 0, d: 2, f: 1},
    f: {f: 0, e: 1, i: 2},
    i: {i: 0, f: 2, k: 3},
    k: {k: 0, i: 3, l: 3},
    l: {l: 0, k: 3}
  },
  summation: sum,
  zero: 0,
);

int CalculateRoute(String? startStation, String? endStation) {
  // int time = 0;
  if (startStation == null || endStation == null) {
    return -1;
  }
  final lightestPath = graph.lightestPath(startStation, endStation);

  return graph.weightAlong(lightestPath) * 5;
}
