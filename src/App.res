Emotion.injectGlobal({
  "*": {
    "margin": 0,
    "padding": 0,
    "outline": 0,
    "-webkit-font-smoothing": "antialiased",
    "-moz-osx-font-smoothing": "grayscale",
  },
  "*, *::before, *::after": {
    "boxSizing": "border-box",
  },
  "html": {
    "fontSize": "62.5%",
  },
  "body": {
    "scroll-behavior": "smooth",
    "fontFamily": Theme.Typography.fontFamily,
    "fontSize": Theme.Typography.Size.paragraph,
  },
  "html, body": {
    "height": "100%",
    "width": "100%",
  },
  "button": {
    "cursor": "pointer"
  },
  "ul": {
    "listStyle": "none"
  }
})

@react.component
let make = () => {  
  <div>
    <Header />
  </div>
}
