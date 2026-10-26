#set page(
  paper: "a4",
  margin: (x: 1.55cm, y: 1.3cm),
)
#set text(font: "Noto Sans", size: 8.9pt, lang: "en", fill: rgb("#222222"))
#set par(leading: 0.53em, justify: false)
#show link: set text(fill: rgb("#222222"))
#show link: underline

#let ink = rgb("#222222")
#let muted = rgb("#666666")
#let rule = rgb("#d2d2d2")

#let section(title) = [
  #v(1em)
  #text(size: 8.4pt, weight: "bold")[#upper(title)]
  #v(-0.25em)
  #line(length: 100%, stroke: (paint: rule, thickness: 0.6pt))
  #v(0.18em)
]

#let meta(body) = text(size: 8.25pt, fill: muted)[#body]

#let item-title(title, right) = [
  #grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    [#text(size: 10.6pt, weight: "bold")[#title]],
    [#meta(right)],
  )
]

#let project(title, stack, links, body) = [
  #block(spacing: 0.6em)[
    #v(0.1em)
    #item-title(title, stack)
    #if links != none [
      #v(-0.2em)
      #meta(links)
    ]
    #v(0.05em)
    #body
  ]
]

#let experience(title, org, date, body) = [
  #block(spacing: 1em)[
    #item-title(title, date)
    #v(-0.2em)
    #meta(org)
    #v(0.05em)
    #body
  ]
]

#let skill(label, value) = [
  #block(spacing: 1em)[
    #text(weight: "bold")[#label:] #value
  ]
]

#let skill-line(label, value) = [
  #block(spacing: 1em)[
    #text(weight: "bold")[#label:] #value
  ]
]

#let header() = [
  #grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    align: (left, bottom),
    [
      #text(size: 23.5pt, weight: "bold")[Lorenzo Ferri] \
      #text(size: 11.2pt, weight: "bold")[Game Programmer | Gameplay Systems, Modding, Tools]
    ],
    [
      #align(right)[
        #text(size: 8.25pt)[
          Lugano, Switzerland \
          #link("mailto:lorenzo.ferri96@gmail.com")[lorenzo.ferri96\@gmail.com] \
          #link("tel:+41765092342")[+41 76 509 23 42] \
          #link("https://github.com/LorenzoFerri")[github.com/LorenzoFerri] \
          #link("https://www.linkedin.com/in/lorenzo-ferri-dev/")[linkedin.com/in/lorenzo-ferri-dev] \
          #link("https://lorenzoferri.itch.io")[lorenzoferri.itch.io]
        ]
      ]
    ],
  )
  #v(0.55em)
  #line(length: 100%, stroke: (paint: ink, thickness: 0.85pt))
]

#header()

#section[Profile]

Software engineer moving into game programming, with 4+ years of professional development experience, Godot game jam projects, professional Godot/SUMO visualization work, and a public Elden Ring DLL mod. Strongest in gameplay systems, player controls, UI/input, rapid prototyping, multiplayer prototypes, and native mod/plugin development. Interested in the overlap between programming and design, especially player controls, combat readability, and mechanics that interact cleanly with each other.

#section[Technical Snapshot]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.8cm,
  row-gutter: 0.36em,
  [
    #skill-line[Gameplay][character control, combat implementation, progression/upgrade loops, UI/input, game feel iteration]
    #skill-line[Engines][Godot; Unity and Unreal basics]
  ],
  [
    #skill-line[Programming][C++, C\#, GDScript, Python, TypeScript, Java, Kotlin, Swift, Lua]
    #skill-line[Engineering][Git, debugging, testing, CI/CD, cross-platform development, agile collaboration]
  ],
)

#section[Selected Game Projects]

#project(
  [RadialMenu - Elden Ring Mod],
  [C++, native DLL, Dear ImGui, MinHook, ModEngine | 2026],
  [
    #link("https://www.nexusmods.com/eldenring/mods/9832")[Nexus Mods release] |
    #link("https://github.com/LorenzoFerri/RadialMenu")[GitHub source]
  ],
)[
  Public Elden Ring native DLL mod adding radial menus for spells and quick items.
  - Implemented a controller and keyboard/mouse selection flow where holding the normal spell/item input opens a radial menu, directional input chooses an entry, and release confirms the selection while short taps keep the original behavior.
  - Integrated with the running game's data to resolve spells, quick items, localized names, and icons.
  - Released and maintained the mod for real users, including compatibility work with major Elden Ring mods and game updates.
]

#project(
  [Borrowed Skin - Brackeys Game Jam 2026.2],
  [Godot, GDScript, shaders, editor tooling | 2026],
  [#link("https://luvbytes404.itch.io/borrowed-skin-moonmoss")[Play on itch.io]],
)[
  First-person narrative horror game created by a multidisciplinary team for Brackeys Game Jam 2026.2.
  - Implemented the majority of the game's code, including an event-driven narrative director coordinating a 12-stage story, objectives, interactions, character states, blackouts, branching choices, and three endings.
  - Served as tech artist, creating VFX and CRT post-processing shaders and building editor tools for character placement and the art team's workflow.
]

#project(
  [Spell 4 Dead - Solo Game Jam Project],
  [Godot, GDScript, HTML5 | 2026],
  [#link("https://lorenzoferri.itch.io/spell-4-dead")[Play on itch.io]],
)[
  Solo arena survival prototype built during a 48-hour game jam.
  - Designed and implemented the core loop: player movement, aiming, spell casting, enemy waves, upgrades/shop flow, UI, settings, and control rebinding.
  - Built a playable web release around four elemental attacks and round-based survival.
]

#project(
  [Ludo Long Game Jam 2025 - Online Co-op Vehicle Shooter],
  [Godot, GDScript, ENet | 2025],
  none,
)[
  Two-player online co-op vehicle shooter prototype built during a month-long game jam.
  - Implemented direct-IP multiplayer, driver/gunner roles, vehicle interaction, weapons, enemies, shop upgrades, and shared game state.
  - Built for an asymmetric co-op loop where one player drives and the other controls a mounted weapon.
]

#project(
  [Clown Therapy - Global Game Jam],
  [Godot, GDScript | 2024],
  [#link("https://mrpriest.itch.io/clown-therapy")[Play on itch.io]],
)[
  - Implemented core gameplay systems including movement, attacks, dash, bomb ability, combat interactions, controller support, and wave structure.
  - Iterated on combat readability and feel under 48-hour jam constraints.
]

#project(
  [The Roots of Revenge - Global Game Jam],
  [Godot, GDScript | 2023],
  [#link("https://mrpriest.itch.io/the-roots-of-revenge")[Play on itch.io]],
)[
  - Implemented procedural leg/root movement using inverse kinematics for spider-like character animation.
  - Contributed to the central root mechanic tying health, movement, climbing, and attacks into one character system.
]

#pagebreak()

#header()

#section[Professional Experience]


#experience(
  [Software Engineer],
  [Ex Machina, Lugano],
  [2021 - Feb 2026],
)[
  - Built an interactive traffic simulation visualizer using Godot and SUMO, allowing users to inspect and control urban mobility scenarios such as road closures and direction changes; presented it at #link("https://m.devoxx.com/events/vdt26/talks/5440/driving-smarter-mobility-from-openstreetmap-to-real-time-traffic-simulation-with-sumo-godot")[Voxxed Days Ticino] (#link("https://www.youtube.com/watch?v=4n73p8qm17Q")[video]).
  - Shipped production software across mobile, web, and backend systems using SwiftUI, Jetpack Compose, React, Java, and Spring Boot.
  - Built interactive UI-heavy applications with attention to responsiveness, state management, debugging, and maintainability.
  - Integrated LLMs and AI agents into production applications and internal workflows.
  - Worked across frontend, backend, and mobile codebases in small agile teams, moving from prototypes to production features.
]

#experience(
  [Mobile Developer],
  [Nassa Studio, Lugano],
  [2020 - 2021],
)[
  - Built a Jetpack Compose tablet application for helicopter operation support, focused on map-like interaction and collision avoidance near power lines.
]

#experience(
  [Frontend Developer],
  [Omnibus Engineering SA, Taverne],
  [2018 - 2021],
)[
  - Developed a React application for monitoring and interacting with smart home devices.
]

#experience(
  [Fullstack Developer Intern],
  [Coopar, Lugano],
  [2017],
)[
  - Built an Electron desktop application for survey visualization during a 4-month internship.
]

#section[Education]

#item-title([MSc Artificial Intelligence - Universita della Svizzera italiana], [2018 - 2022])
Coursework and projects in machine learning, deep learning, computer vision, NLP, graphics/programming fundamentals, linear algebra, and probability.

#v(0.35em)
#item-title([BSc Informatics - Universita della Svizzera italiana], [2015 - 2018])
Software engineering fundamentals, programming paradigms, algorithms, networking, client-server systems, and collaborative development.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
  [
    #section[Awards & Events]

    - 1st Place - 12th Artificial Intelligence Cup, USI Informatics, 2018 - university AI programming competition.
    - Global Game Jam participant every year since 2023.
    - USI Hackathon: Making Data Alive, 2019.
  ],
  [
    #section[Open Source]

    - #link("https://github.com/moreSwift/swift-cross-ui/pull/75")[Contributed] the initial Windows implementation for SwiftCrossUI.

    #section[Languages]

    - Italian: native.
    - English: C1.
  ],
)
