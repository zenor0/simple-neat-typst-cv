

#let main_head(title, prefix: [\/\/], postfix: []) = {
  let prefix = text(size: 12pt)[#prefix]
  let postfix = text(font: "Cascadia Code")[#postfix]
  text(weight: "black", size: 16pt)[#prefix #title #postfix]
  v(-8pt)
  line(length: 100%, stroke: (thickness: 0.5pt, paint: rgb("#0000006F")))
}

#let time_width = 3cm
#let info_block(title, content, ) = {
  grid(
    columns: (time_width, 5fr),
    gutter: 2em,
    row-gutter: 1em,
    align: (right, left),
    text(weight: "black", size: 10pt)[#title],
    text(size: 10pt)[#content]
  )
}
#let award_info(time: none, title: none, label: none, ) = {
  grid(
    columns: (time_width, 5fr, 1fr),
    gutter: 2em,
    row-gutter: 1em,
    align: (right + horizon, left + horizon, right),
    text(size: 8pt)[#time],
    text(weight: "black", size: 12pt)[#title],
    text(weight: "bold", size: 9pt)[#label],
  )
}
#let award_detail(content) = {
  grid(
    columns: (time_width, 5fr),
    gutter: 2em,
    row-gutter: 1em,
    align: (right, left),
    text(size: 8pt)[],
    text(size: 8pt)[#content]
  )
}
#let award_block(dict: ((time: none, title: none, label: none),), content, ) = {
  set list(indent: -0.8em)
  set par(leading: 1em)
  for value in dict {
    award_info(..value)
  }
  award_detail(content)
}
