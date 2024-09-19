module MyCoolPackage

# Write your package code here.

# import packages
using Example

# export functions
export greet, farewell

# include other scripts
include("greeting_functions.jl")

end
