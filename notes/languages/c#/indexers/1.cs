  public struct BitSet
  {
    int bits;
    public bool get(int i)
    {
       return 0<=i && i<32 ? (bits & 1<<i) != 0 : false;
    }
    public void set(int i, bool value)
    {
      if (i<0 || i>31) return;
      if (value) bits |= 1<<i; else bits &= ~(1<<i);
    }

  }

