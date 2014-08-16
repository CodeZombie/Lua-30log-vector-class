Lua 30Log-compatible vector class
=================================

If you're using lua and 30log as your class system, and need some minimal Vector math, this is for you.

###Requirements
 + Requires 30Log
 + Standard lua Math.* library

###Available functions
 + `Vector:equal(v)`: Returns true if the vectors are equal
 + `Vector:add(v)`: Adds two vectors together. Returns the new vector.
 + `Vector:subtract(v)`: Subtracts the supplied vector from the original. Returns the new vector.
 + `Vector:add(v)`: Adds two vectors together. Returns the new vector.
 + `Vector:multiply(n)`: Multiplies the vector by a number. Returns the new vector.
 + `Vector:divide(n)`: Divides a vector by a number. Returns the new vector.
 + `Vector:distance(v)`: Returns the distance between two vectors. (Only useful if vector contains Cartesian coordinates)
 + `Vector:normalize()`: Returns the unit vector of a vector.