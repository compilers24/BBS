public struct BitSet
{
  int bits;                   //our integer
  public bool this[ind i]     //indexer
  {
    get
    {
      return 0<=i && i<32? (bits & 1<<i) !=0 : false; 
    }
    set
    {
      if (i<0 || i>31) return;
      if (value) bits |= 1<<i; else bits &= ~(1<<i);
    }
  }
}
