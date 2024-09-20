using JuMP
using GLPK

# model = Model(GLPK.Optimizer)
# @variable(model, x >= 0)
# @variable(model, 0 <= y <= 3)
# @objective(model, Min, 12x + 20y)
# @constraint(model, c1, 6x + 8y >= 100)
# @constraint(model, c2, 7x + 12y >= 120)
# print(model)


# optimize!(model)
# objective_value(model)
# @show value(x)
# @show value(y)

# Knapsack problem
# model = Model(GLPK.Optimizer)
# @variable(model, green >=0, Int)
# @variable(model, blue >=0, Int)
# @variable(model, orange >= 0, Int)
# @variable(model, yellow >= 0, Int)
# @variable(model, grey >= 0, Int)

# @constraint(model, weight,
#     green * 12 + blue * 2 + orange * 1 
#     + yellow * 4 + grey * 1 <= 15)

# @objective(model, Max, 
#     green * 4 + blue * 2 + orange * 1 + yellow * 10 + grey * 2)

# optimize!(model)
# boxes = [green, blue, orange, yellow, grey]
# for box in boxes 
#     println(box, "\t = ", value(box))
# end

# value(weight)
# objective_value(model)


using Ipopt
model = Model(Ipopt.Optimizer)

@variable(model, x >= 0, start = 0)
@variable(model, y >= 0, start = 0)
@NLconstraint(model, x + 2y == 100)
@NLobjective(model, Max, x * y)
optimize!(model)
objective_value(model)
value(x)
value(y)
using Plots
plotlyjs(size=(760, 570))
x = 0:100
area(x) = x * (100-x) / 2
p = plot(
    x, area
)