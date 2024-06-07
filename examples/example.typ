#import "@local/simple-neat-cv:0.1.0": cv-conf, main_head, info_block, award_block, show-icon-text

#show: doc => cv-conf(
  name: "zenor0",
  intention: "求职意向: BIG BOSS",
  photo: "../assets/photo_example.jpg",
  wechat: "zenor0",
  phone: "+86 xxx xxxx xxxx",
  email: ("mail1@zenor0.site", "mail2@zenor0.site"),
  website: "zenor0.site",
  github: "github.com/zenor0",
  hobby: "音乐, 摄影",
  skills: (
    (title: "英语", content: [*CET4* / 999  *CET6* / 999]),
    (title: "办公", content: [Word \ Excel \ Typst]),
    (title: "视频制作", content: [Davinci Resolve \ Premiere Pro]),
    (title: "平面设计", content: [Photoshop \ Powerpoint \ Illustrator \ Stable Diffusion]),
    (title: "搜索技能", content: [Google \ LLMs \ Stackoverflow]),
    (title: "自定义", content: [...]),
  ),
  doc,
)


#main_head()[#show-icon-text("../assets/icons/degree-hat.svg", "教育经历", reverse: true)]

#info_block("2021.09 - 至今")[
  #grid(
    columns: (1.5fr, 1fr, 1fr),
    align: (left + horizon, center + horizon, right + horizon),
    gutter: 10pt,
    align(horizon)[*吃饭幼儿园* `985` `211` `双一流` ],
    [睡眠管理专业],
    [全托制本科],
    [GPA 4.0/4.0],
    [排名 1/10000],
  )
]

#info_block("课程成绩")[
  #text(size: 9pt)[
    #grid(
      columns: (1fr, 1fr, 1fr, ),
      align:left + horizon,
      gutter:10pt,
      row-gutter: 1em,
      [计算机组成原理 / 100], [操作系统 / 100], [算法与数据结构 / 100],
      [计算机网络 / 100], [高等数学 / 100], [EVERYTHING / 100],
    )
  ]
]
#info_block("技术栈")[
  Python, C++/C, Vue, TypeScript, Git, Docker
]


#main_head()[#show-icon-text("../assets/icons/shopping-mall.svg", "项目经历", reverse: true)]
#award_block(dict: ((
  time: "from - to",
  title: [项目名称],
  label: "标签"), )
)[
  - 项目技术栈: Golang + MySQL + Redis + RabbitMQ + Python + Socket.io
  - 一点你要说的话
  - 二点你想要说的话
  - 三点你想要说的废话
]
#award_block(dict: (
  (time: "time", title: "也可以是一个总结性的标题, 标签留空", label: none),
  (time: "sub-time", title: text(weight: "bold", size: 9pt)[夕阳似火, 小郑睡着了], label: "全国特等奖"),
  (time: "sub-time", title: text(weight: "bold", size: 9pt)[夜色如水, 小郑睡沉了], label: "全球特等奖"),
  (time: "sub-time", title: text(weight: "bold", size: 9pt)[寂静如坟, 小郑睡死了], label: "宇宙特等奖"),

),
)[
  - 你有这么高速运转的机械进入中国，记住我给出的原理，小的时候。就是研发人，就研发这个东西的一个原理是阴间证权管，你知道为什么会有生灵给他运转，先位。
  - 还有、还有专门饲养这个，为什么地下产这种东西，他管着、他是五世同堂旗下子孙。你以为我在给你闹着玩呢，你不、你不、你不警察吗，黄龙江一派全部带蓝牙，黄龙江、我告诉你，在阴间是、是那个化名、化名，我小舅，亲小舅，张学兰的那个、那个嫡子、嫡孙。咋的你跟王守义玩呢，她是我儿子，她都管我叫太祖奶奶。爱因斯节叶赫那拉，我是施瓦辛格。
  - 我告诉你，他不听命于杜康。我跟你说句根儿上的事，你不刑警队的吗？他不听命于杜康。为什么，他是韩国人，他属于合、合作方，合伙人，自己有自己的政权，但是你进入亚洲了，这、这块牡丹江号称小联合国，你触犯了军权就可以抓他！
]
#main_head()[#show-icon-text("../assets/icons/certificate.svg", "获奖情况", reverse: true)]
#table(
    columns: (3fr, 1fr, 1fr),
    rows: auto,
    stroke: none,
    table.hline(),
    align: (left+horizon),
    table.header(
      [*奖项名称*], [*奖项*], [*获奖时间*]
    ),
    table.hline(stroke: 0.4pt),

    [中国福利彩票安慰奖], [*支付凭证一张*], [2999],
    [银河系第八届退堂鼓演奏比赛], [*一等奖*], [2099.13],
    [吃饭幼儿园第五届睡觉比赛], [*仍在进行中*], [2024],

    table.hline(),
  )

#main_head()[#show-icon-text("../assets/icons/ad-product.svg", "使用说明", reverse: true)]

#h(2em)本模板默认字体为: 阿里巴巴普惠体 3.0 `Alibaba PuHuiTi 3.0`

本模板会根据文案内容自动添加LOGO. 例如, Word, Powerpoint, Excel

你可以修改 `cv/utils/icons.typ` 中的内容来修改替换图标的行为.

也可以使用函数 `show-icon-text(icon, name, size, reverse)` 来显示自定义LOGO和文字内容.