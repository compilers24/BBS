class Language
{
  let name: String
  init(name: String)
  {
    self.name = name
	print("\(name) has been initialized")
  }
  deinit
  {
    print("\(name) has been deinitialized")
  }
}

var reference1: Language?
var reference2: Language?
var reference3: Language?

reference1 = Language(name: "Swift")
reference2 = Language(name: "Java")
reference3 = Language(name: "Oberon")

reference2 = reference1
reference3 = reference1
