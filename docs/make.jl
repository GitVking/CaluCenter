using CaluCenter
using Documenter

DocMeta.setdocmeta!(CaluCenter, :DocTestSetup, :(using CaluCenter); recursive=true)

makedocs(;
    modules=[CaluCenter],
    authors="Vking Wei",
    repo="https://github.com/Vking/CaluCenter.jl/blob/{commit}{path}#{line}",
    sitename="CaluCenter.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Vking.github.io/CaluCenter.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Vking/CaluCenter.jl",
    devbranch="main",
)
