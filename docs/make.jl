using MyCoolPackage
using Documenter

DocMeta.setdocmeta!(MyCoolPackage, :DocTestSetup, :(using MyCoolPackage); recursive=true)

makedocs(;
    modules=[MyCoolPackage],
    authors="Joshua Moore",
    sitename="MyCoolPackage.jl",
    format=Documenter.HTML(;
        canonical="https://jmoo2880.github.io/MyCoolPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jmoo2880/MyCoolPackage.jl",
    devbranch="main",
)
