double calculatePercentage(int value, int total) {
  // Pastikan total tidak sama dengan 0 untuk menghindari pembagian oleh 0.
  if (total != 0) {
    if (total > value) {
      return (value / total);
    }
    return 1.0;
  } else {
    // Handle kasus ketika total adalah 0.
    return 0.0;
  }
}
