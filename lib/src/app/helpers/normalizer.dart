double normalizeToFive({
  required double val,
  required int max,
  required int min,
}) {
  return (val / max) * min;
}
