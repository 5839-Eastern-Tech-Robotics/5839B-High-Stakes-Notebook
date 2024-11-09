#import "./packages.typ": *

// applies the template
// the show rule essentially passes the entire document into the `notebook` function. 
#show: notebook.with(theme: radial-theme, cover: align(center + horizon)[
  #text(size: 24pt)[
    #text(size: 28pt)[
      Engineering Notebook
      #line(length: 50%, stroke: (thickness: 2.5pt, cap: "round"))
      5839B
    ]

    #image("assets/logo.jpg", height: 50%)

    2024 - 2025
    #line(length: 50%, stroke: (thickness: 2.5pt, cap: "round"))
    High Stakes
  ]
])

#include "./frontmatter.typ"

#include "./entries/entries.typ"

#include "./appendix.typ"
