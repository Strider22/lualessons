function SayHello()
  print("Hello World")
end

function SayGoodbye()
  print("Goodbye for now")
end

function PassFunction(myFunction)
  print("PassFunction invoking the passed in function")
  myFunction()
end

function PassBy(value)
  print("Inside PassBy value is "..value)
end

-----------------------------------------------------------------------------------------------[[
--INVOKING THE FUNCTIONS
-----------------------------------------------------------------------------------------------]]
SayHello()
PassFunction(SayGoodbye)
PassFunction(SayHello)

