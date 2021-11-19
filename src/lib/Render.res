@val
module Array = Js.Array2

let s = React.string
let map = (elements, fn) => elements->Array.mapi((element, index) => fn(element, index))->React.array