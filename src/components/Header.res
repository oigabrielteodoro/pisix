open Render
open ReactIcons_Fi
open ReactIcons_Vsc
open Ancestor.Default

@module("../assets/logo.svg") external logo: string = "default"

module Styles = {
  open Emotion

  let logo = css({
    "cursor": "pointer"
  })

  let header = css({
    "display": "flex",
    "justifyContent": "space-between",
    "position": "absolute",
    "top": "0",
    "right": "0",
    "left": "0", 
  })

  let navItem = css({
    "fontWeight": "500",
    "cursor": "pointer",
    "transition": "300ms",
    "&:hover": {
      "color": Theme.Colors.Green._500,
    },
    "& + li": {
      "marginLeft": "3.8rem"
    }
  })

  let button = css({
    "background": "transparent",
    "border": "0",
    "transition": "300ms",
    "&:hover": {
      "filter": "brightness(0.8)"
    },
    "& + button": {
      "marginLeft": "2.6rem"
    }
  })
}

let pages = ["Home", "Pages", "Blog", "Contacts"]

@react.component
let make = () => {
  <Box
    tag=#header 
    position=[xs(#absolute)]
    top=[xs(#zero)]
    right=[xs(#zero)]
    left=[xs(#zero)]
    display=[xs(#flex)]
    alignItems=[xs(#center)]
    justifyContent=[xs(#"space-between")]
    py=[xs(5)]
    maxW=[xs(1770->#px)]
    my=[xs(0)]
    mx=[xs(10)]
  >
    <img src=logo alt="Pisix Logo" className=Styles.logo />
    <nav>
      <Box tag=#ul display=[xs(#flex)] alignItems=[xs(#center)]>
        {
          pages->map((page, index) => (
            <li key={index->Js.Int.toString} className=Styles.navItem>
              {page->s}
            </li>
          ))
        }
      </Box>
    </nav>
    <section>
      <button className=Styles.button>
        <FiSearch color={Theme.Colors.Green._500} size={24} />
      </button>
      <button className=Styles.button>
        <VscSettings color={Theme.Colors.Green._500} size={24} />
      </button>
    </section>
  </Box>
}