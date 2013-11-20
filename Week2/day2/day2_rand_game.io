
r := Random value (0, 100) round

i := 0
standardIo := File standardInput
"Try to guess a number between 0 and 100" println

guess := standardIo readLine asNumber

diff := guess - r abs
mood := ""

while (i != 10 and guess != r,
    i = i +1
    try := (10 - i) +1
    if (mood != "",
        writeln("Nope you have only ",try," more try and you're ",mood),
        writeln("Nope you have only ",try," more try")
    )
    guess := standardIo readLine asNumber
    if (diff >= (guess - r), mood = "hotter", mood="colder")
    diff = guess -r abs
)

if (i == 0,
    writeln("the answer was ",r),
    writeln("good guess!")
)