open Render

module Styles = {
  open Emotion

  let button = css({
    "border": "0",
    "color": Theme.Colors.white,
    "borderRadius": Theme.Radius.button,
    "backgroundColor": Theme.Colors.Green._500,
    "fontSize": Theme.Typography.Size.subtitle,
    "height": "7.2rem",
    "padding": "0 4rem",
    "fontWeight": "bold",
    "lineHeight": "2.7rem",
    "boxShadow": "0 2.6rem 3rem -1.6rem rgba(0, 191, 196, 0.25)",
    "transition": "300ms",
    "&:hover": {
      "backgroundColor": Polished.darken(0.03, Theme.Colors.Green._500)
    },
  })
}

@react.component
let make = (~children, ~onClick=?) => {
  <button ?onClick className=Styles.button>{children->s}</button>
}