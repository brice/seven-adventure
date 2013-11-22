OperatorTable addAssignOperator(":", "atPutNumber")

Map atPutNumber := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1)
    )
)

curlyBrackets := method(
  r := Map clone
  call message arguments foreach(arg,
       r doMessage(arg)
       )
  r
)

Map printAttributes := method(
    self foreach(k, v,
        write(" " .. k .. "=\"" .. v .. "\"")
    )
)

Builder := Object clone

Tabulation := ""

Builder forward := method(
  write(Tabulation, "<", call message name)
  Tabulation = Tabulation .. "  "

  call message arguments foreach(arg,
    //arg println
    /*if (arg name == "curlyBrackets",
        arg println
        //(self doMessage(arg) printAttributes)
    )
    write(">")

    content := self doMessage(arg);

    if(content type == "Sequence",
      writeln(Tabulation, content)
    )*/
  )
  Tabulation = Tabulation exclusiveSlice (0, Tabulation size - 2   )
  writeln(Tabulation,"</", call message name, ">")

)

Builder ul(
    li( ul (li({"display": "none"}, "Io"))),
    li("Lua"),
    li("JavaScript"))