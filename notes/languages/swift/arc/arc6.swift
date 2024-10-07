class Language
{
  let name: String
  weak var inventor: Person? //arc does not count weak references
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

class Person
{
  let name: String
  var language: Language?
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


var language: Language?
var inventor: Person?

language = Language(name: "Swift")
inventor = Person(name: "Chris Lattner")
inventor!.language = language
language!.inventor = inventor


inventor = nil
language = nil //will not be deinitialized, because they point to each other


