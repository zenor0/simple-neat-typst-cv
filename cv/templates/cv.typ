#import "../utils/fonts.typ": font_lib, size_lib
#import "../utils/set-cv.typ": set-cv
#import "../utils/packages.typ": *
#import "../utils/icons.typ": show-icon-text, set-up-icon

// icon set-up


#let cv-conf(
  name: "zenor0",
  intention: "求职意向",
  photo: "../assets/photo_example.jpg",
  wechat: "zenor0",
  phone: "12345678910",
  email: ("zenor0@qq.com", "zenor0@outlook.com"),
  website: "zenor0.site",
  github: "github.com/zenor0",
  hobby: "音乐, 摄影",
  skills: (),
  doc,
) = {
  show: set-cv.with()

  let head(title) = {
    let prefix = "//"
    text(weight: "black", size: 10pt)[\/\/ #title]
    v(-8pt)
    line(length: 100%, stroke: (thickness: 0.5pt, paint: rgb("#0000002f")))
  }

  let info_block(title, content) = {
    par(leading: 0.8em)[
      #text(weight: "black", size: 8pt)[#title \ ]
      #if type(content) == str {
        text(size: 7pt)[#content \ ]
      } else {
        for c in content {
          text(size: 7pt)[#c \ ]
        }
      }
    ]
  }

  let info() = {
    show par: set block(spacing: 11pt)
    if wechat != none {
      info_block(show-icon-text("../assets/icons/wechat.svg", "微信"), wechat)
    }
    if phone != none {
      info_block(show-icon-text("../assets/icons/phone.svg", "手机"), phone)
    }
    if email != none {
      info_block(show-icon-text("../assets/icons/mail.svg", "Email"), email)
    }
    if website != none {
      info_block(show-icon-text("../assets/icons/web-page.svg", "个人网站"), website)
    }
    if github != none {
      info_block(show-icon-text("../assets/icons/github _github.svg", "Github"), github)
    }
    if hobby != none {
      info_block(show-icon-text("../assets/icons/oval-love-two.svg", "兴趣爱好"), hobby)
    }
  }

  let show-skill(title: none, content: none) = {
    text(weight: "black", size: 8pt)[#title \ ]
    v(-5pt)
    set par(justify: false)
    text(size: 7pt)[#content \ ]
  }
  let show-skills(skills) = {
    show: doc => set-up-icon(doc)
    show par: set block(spacing: 1.5em)
    set par(leading: 1em)
    if skills.len() != 0 {
      head("个人技能")
      for skill in skills {
        show-skill(..skill)
    }
    }
  }

  let bio(name, intention, wechat, phone, email, website, github, habit, skills) = {
  grid(
    rows: (4cm, 1.5cm, 1fr),
    align: (right),
    gutter: 5pt,
    rect(stroke: none)[#image(photo)],
    rect(stroke: none, width: 88pt)[
      #set align(center)
      #text(weight: "black", size: 14pt)[#name]
      #v(-5pt)
      #text(size: 7pt)[#intention]
      ], 
    rect(stroke: none)[
      #head("个人信息")
      #info()
      #v(1em)

      #show-skills(skills)
    ]
    )
  }
  


  
  grid(
  columns: (1fr, 4fr),
  gutter: 5pt,
  rect(inset: 8pt, fill: rgb("#0000000F"), radius: 2pt)[
    #bio(name, intention, wechat, phone, email, website, github, hobby, skills)
    ],
    rect(fill: rgb(255, 255, 255, 0))[#set-up-icon(doc)],
  )
}

#show: cv-conf.with(
)
