module FiSearch = {
  @module("react-icons/fi")
  @react.component
  external make: (
    ~color: string,
    ~size: int,
    ~title: string=?,
    ~children: React.element=?,
    ~className: string=?,
  ) => React.element = "FiSearch"
}
