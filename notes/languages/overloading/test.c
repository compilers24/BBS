struct Foo {
  int Fn(int x) const { return x + 42; }
  int Fn(void) const { return 24; }
};

int main()
{
  Foo f;
  return f.Fn() + f.Fn(1);
}
