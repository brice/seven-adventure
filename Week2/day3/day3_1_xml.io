Builder := Object clone

Tabulation := ""
PreviousTabulation := ""

Builder forward := method(
  writeln(Tabulation, "<", call message name, ">")
  Tabulation = Tabulation .. "  "

  call message arguments foreach(arg,
    content := self doMessage(arg);
    if(content type == "Sequence",
      writeln(Tabulation, content)
    )
  )
  Tabulation = Tabulation exclusiveSlice (0, Tabulation size - 2   )
  writeln(Tabulation,"</", call message name, ">")

)

Builder ul(
    li( ul (li("Io"))),
    li("Lua"),
    li("JavaScript"))