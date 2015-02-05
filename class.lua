require "personClass"

-- like static class
personClass.Register("Tom", 27)
personClass.Display()

-- variable in personClass are not available
print(personClass._name)


person = require "personClass"

person.Register("Sally",45)
person.Display()

person2 = require "personClass"

person2.Register("Joe",25)
person2.Display()

personClass.Display()
person.Display()

