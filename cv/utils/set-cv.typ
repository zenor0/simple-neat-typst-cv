#import "packages.typ": show-cn-fakebold
#import "fonts.typ": font_lib, size_lib

#let set-cv(bilingual-bib: true, doc) = {
  set page(paper: "a4", margin: (top: 1cm, bottom: 1cm, left: 1cm, right: 1cm))
  set text(font: font_lib.main, size: size_lib.小五, weight: "regular", lang: "zh")
  // set par(first-line-indent: 2em, leading: 15pt, justify: true)
  set par(first-line-indent: 2em, justify: true)
  show par: set block(spacing: 15pt)
  show raw.where(block: false): it => box(
  inset: (x:1pt, y:1pt),
  box(
    fill: luma(240), 
    inset: (x: 2pt), 
    outset: (y: 3pt), 
    radius: 3pt
    )[#text(font: font_lib.main, fill: luma(100))[#it]])

  // show: show-cn-fakebold

  doc
}