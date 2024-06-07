
#let show-icon-text(icon, name, size: 0.7em, reverse: false) = {
  box[
    #if reverse {
      name
    }
    #box(
      image(icon, height: size)
    )
    #if not reverse {
      name
    }
  ]
}


#let set-up-icon(doc) = {
  show "Python" :           name => show-icon-text("../assets/icons/python.svg", name)
  show "C++" :              name => show-icon-text("../assets/icons/cplusplus.svg", name)
  show "Vue" :              name => show-icon-text("../assets/icons/vuedotjs.svg", name)
  show "TypeScript" :       name => show-icon-text("../assets/icons/typescript.svg", name)
  show "Git" :              name => show-icon-text("../assets/icons/git.svg", name)
  show "Docker" :           name => show-icon-text("../assets/icons/docker.svg", name)
  show "Golang":            name => show-icon-text("../assets/icons/go.svg", name)
  show "MySQL" :            name => show-icon-text("../assets/icons/mysql.svg", name)
  show "RabbitMQ" :         name => show-icon-text("../assets/icons/rabbitmq.svg", name)
  show "Redis" :            name => show-icon-text("../assets/icons/redis.svg", name)
  show "Pandas" :           name => show-icon-text("../assets/icons/pandas.svg", name)
  show "Flask" :            name => show-icon-text("../assets/icons/flask.svg", name)
  show "Socket.io" :        name => show-icon-text("../assets/icons/socketdotio.svg", name)
  show "Typst" :            name => show-icon-text("../assets/icons/typst.svg", name)
  show "Word" :             name => show-icon-text("../assets/icons/microsoftword.svg", name)
  show "Excel" :            name => show-icon-text("../assets/icons/microsoftexcel.svg", name)
  show "Powerpoint" :       name => show-icon-text("../assets/icons/microsoftpowerpoint.svg", name)
  show "Davinci Resolve" :  name => show-icon-text("../assets/icons/davinciresolve.svg", name)
  show "Premiere Pro" :     name => show-icon-text("../assets/icons/adobepremierepro.svg", name)
  show "Photoshop" :        name => show-icon-text("../assets/icons/adobephotoshop.svg", name)
  show "Illustrator" :      name => show-icon-text("../assets/icons/adobeillustrator.svg", name)
  show "After Effects" :    name => show-icon-text("../assets/icons/adobeaftereffects.svg", name)
  show "Google" :           name => show-icon-text("../assets/icons/google.svg", name)
  show "Stackoverflow" :    name => show-icon-text("../assets/icons/stackoverflow.svg", name)
  show "LLMs" :             name => show-icon-text("../assets/icons/openai.svg", name)
  
  show "字节跳动" :           name => show-icon-text("../assets/icons/bytedance.svg", name)
  show "哔哩哔哩" :           name => show-icon-text("../assets/icons/bilibili.svg", name)
  doc
}