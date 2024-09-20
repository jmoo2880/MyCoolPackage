module MyCoolPackage

# Write your package code here.

# import packages
using Example

# use import for functions you want to extend
import Base: +, -

# export functions
export greet, farewell,
    MyNumber, myfunction

# include other scripts
include("greeting_functions.jl")
include("my_number.jl")

end
