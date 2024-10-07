public class Element
{
  string title;             // this is variable
  public string Title       // this is property
  {
      get
      {
        return title;
      }
      set
      {
        title = value;
        Repaint();         
      }
  }
  // here we have other fields and methods of the class.
}

