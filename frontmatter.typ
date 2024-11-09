#import "/packages.typ": *
#import codetastic: qrcode

#create-frontmatter-entry(title: "Table of Contents")[
  #components.toc()
]

#create-frontmatter-entry(title: "Our Team")[
  #qrcode("https://google.com")
]
