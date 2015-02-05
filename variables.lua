-- Global variables: All variables are considered global unless explicitly declared as a local.
-- Local variables: When the type is specified as local for a variable then its scope is limited with the functions inside their scope.
-- Table fields: This is a special type of variable that can hold anything except nil including functions.


function myFunction()
  print("Inside myFunction ")
  local myLocal, myLocal2 = 5, 5
  print("Gobal " .. myGlobal)
  print("myLocal " .. myLocal);
  print("myLocal2 " .. myLocal2);
end

myGlobal = 7
print("In global space, myGlobal is ".. myGlobal)

-- The following line is an error, because myLocal is out of scope
--print("myLocal is ".. myLocal)

myLocal2 = "Actually global"
print("In global space, myLocal2 is ".. myLocal2)

myFunction()
