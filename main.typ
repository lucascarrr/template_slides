#import "@preview/touying:0.5.5": *
#import "template.typ": *
#import "macros.typ": *

#let colors = (
  primary: rgb("#021A99"),
  secondary: rgb("#5C7DFF"),
  accent: rgb("#FFE465"),
  dark: rgb("#1a1a2e"),
  light: rgb("#f8f9fa"),
  gray: rgb("#6c757d"),
  success: rgb("#28a745"),
  warning: rgb("#ffc107"),
  error: rgb("#dc3545"),
  info: rgb("#17a2b8"),
  purple: rgb("#6f42c1"),
  pink: rgb("#e83e8c"),
  orange: rgb("#fd7e14"),
  cyan: rgb("#20c997"),
  code-bg: rgb("#F2F2F2"),
)

#show: bamboo-theme.with(
  footer: self => utils.display-current-heading(level: 1),
  config-info(
    title: [Title],
    subtitle: [subtitle],
    author: [Author],
    date: none,
    institution: ([Affil1], [Affil2]),
  ),
)

#title-slide()
#toc-slide()

= Introduction // this is a section

== Slide Title // slide

= Main

== Slide 1
#iff

== References

#hide[#cite(<cropper_learning_2021>)] // Force cite all references  
#bibliography("refs.bib", style: "ieee", title: none)
