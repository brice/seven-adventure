def doChore(chore: String): String = chore match {
    case "nettoyer" => "frotter, sécher"
    case "cuisiner" => "découper, trier"
    case _ => "se plaindre"
}

println(doChore("nettoyer"))
println(doChore("moo"))