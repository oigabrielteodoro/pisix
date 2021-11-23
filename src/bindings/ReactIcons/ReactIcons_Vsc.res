module VscSettings = {
  @module("react-icons/vsc")
  @react.component
  external make: (
    ~color: string,
    ~size: int,
    ~title: string=?,
    ~children: React.element=?,
    ~className: string=?,
  ) => React.element = "VscSettings"
}
