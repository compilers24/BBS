namespace A
{

  public class B
  {

    public static double C = 2.71828182845904523;
    //now when we'll call Console.WriteLine (A.B.C) in program Print identifier A will be treated as namespace A, not the class A of the namespace Hello.
    //for some reason the collision is solved in favor of namespace A.

    //second problem:
    //two different fields named C have different types.
    //method WriteLine is too liberal to the types of its arguments.

  }


}
