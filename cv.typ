#show link: set text(fill: rgb("#0066CC"))
#show link: underline
#show heading.where(level: 1): it => [
  #v(1em)
  #emph(it)
  #v(-0.8em)
  #line(length: 100%, stroke: (thickness: 0.6pt))
]

#grid(
  columns: (1fr, auto),
  [
    #title[Lorenzo Ferri]
    == Curriculum Vitae
  ],
  align(right)[
    Via delle Ale 4, Lugano, 6900 CH
    #box(baseline: 25%, image("mappin.circle.svg", width: 1em)) \
    #link("tel:+41765092342")[076 5092342]
    #box(baseline: 25%, image("phone.circle.svg", width: 1em)) \
    #link("mailto:lorenzo.ferri@exmachina.ch")[lorenzo.ferri\@exmachina.ch]
    #box(baseline: 25%, image("envelope.circle.svg", width: 1em))
  ],
)

= Summary

- Software engineer focused on mobile (SwiftUI, Jetpack Compose), web (React), and backend (Java, Spring Boot) development
- Experience integrating LLMs and AI agents into production applications
- Master's background in Artificial Intelligence with knowledge of programming paradigms and design patterns

= Work Experience

== 2021-Present: Software Engineer

#link("https://www.exmachina.ch")[Ex Machina, Lugano]

- Integrated LLMs and AI agents into applications to enhance functionality and workflows
- Built native Android and iOS apps with SwiftUI and Jetpack Compose
- Developed React web applications for internal and customer-facing tools
- Built backend services with Java and Spring Boot for scalable applications

== 2020-2021: Mobile Developer

Nassa Studio, Lugano

- Built a Jetpack Compose tablet application for collision avoidance around power lines in helicopter operations

== 2018-2021: Frontend Developer

#link("https://www.oeomnibus.ch")[Omnibus Engineering SA, Taverne]

- Developed a React application for monitoring and interacting with smart home devices

== 2017: Fullstack Developer
#link("https://www.linkedin.com/company/coopar/")[Coopar, Lugano]

- Completed a 4-month internship building an Electron desktop application for survey visualization

= Open Source Contributions

== SwiftCrossUI - Windows Platform

#link(
  "https://github.com/moreSwift/swift-cross-ui/pull/75",
)[Contributed the initial Windows implementation for SwiftCrossUI]

- Implemented Windows platform support for a cross-platform Swift UI toolkit

= Education and Training

== 2018-2021: Master in Artificial Intelligence

Università della Svizzera italiana, Lugano 6900 CH

- Coursework in Machine Learning, Deep Learning, Computer Vision, and NLP
- Experience with Python, TensorFlow, and PyTorch
- Strong foundation in linear algebra and probability


== 2015-2018: Bachelor in Informatics

Università della Svizzera italiana, Lugano 6900 CH

- Programming across multiple languages and paradigms
- Software design and development fundamentals
- Networking, client-server models, and web stacks
- Collaboration in agile software teams

= Technical Skills

== Programming Languages

- Swift
- Kotlin
- Java
- TypeScript
- Python
- C
- C++
- C\#
- Haskell
- Lua

== AI Agents & Tools

- Large Language Models (LLMs) integration and prompt engineering
- AI-assisted code generation and debugging
- Machine Learning model development and optimization
- Generative AI applications and workflows
