int my_sum(int a, int b)
{
  if (a == b) {
    // To demonstrate a missed code coverage branch
    return a * 2;
  }
  return a + b;
}
