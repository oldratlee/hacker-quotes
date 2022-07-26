# Just print a hacker quote randomly when open a terminal.
#
# Config Variables
# ----------------------------------------
#
# ZSH_HACKER_QUOTES_ENABLE_WHEN_INTERACTIVE
#   print quotes if print hacker quotes when shell is an interactive login shell,
#     don't check whether shell is a login shell or not.
#   default only print hacker quotes when shell is an interactive and login shell.
#
# Development Notes
# ----------------------------------------
#
# use namespace `_zp_hq` (Zsh Plugin Hacker Quotes) to avoid naming conflict

_zp_hq::should_print_quote() {
  if [[ ! -o interactive ]]; then
    return 1
  fi

  if [[ -n "${ZSH_HACKER_QUOTES_ENABLE_WHEN_INTERACTIVE+var_defined_or_empty}" ]]; then
    return 0
  fi

  [[ -o login ]]
}

_zp_hq::print_quote() {
  if which fold &>/dev/null && [ -n "${COLUMNS:-}" ]; then
    printf '%b\n\n' "$*" | fold -s -w $COLUMNS
  else
    printf '%b\n\n' "$*"
  fi
}

if _zp_hq::should_print_quote; then
  _zp_hq_hacker_quotes=(
    # Linus Torvalds
    # https://en.wikiquote.org/wiki/Linus_Torvalds
    "Talk is cheap. Show me the code.\n - Linus Torvalds"
    "Most good programmers do programming not because they expect to get paid or get adulation by the public, but because it is fun to program.\n - Linus Torvalds"
    "I'm an egotistical bastard, and I name all my projects after myself. First Linux, now git.\n - Linus Torvalds"

    # Alan J. Perlis
    # https://en.wikiquote.org/wiki/Alan_Perlis
    "One man's constant is another man's variable.\n - Alan J. Perlis"
    "Functions delay binding; data structures induce binding. Moral: Structure data late in the programming process.\n - Alan J. Perlis"
    "Syntactic sugar causes cancer of the semicolon.\n - Alan J. Perlis"
    "Every program is a part of some other program and rarely fits.\n - Alan J. Perlis"
    "If a program manipulates a large amount of data, it does so in a small number of ways.\n - Alan J. Perlis"
    "Symmetry is a complexity-reducing concept (co-routines include subroutines); seek it everywhere.\n - Alan J. Perlis"
    "It is easier to write an incorrect program than understand a correct one.\n - Alan J. Perlis"
    "A programming language is low level when its programs require attention to the irrelevant.\n - Alan J. Perlis"
    "It is better to have 100 functions operate on one data structure than 10 functions on 10 data structures.\n - Alan J. Perlis"
    "Get into a rut early: Do the same process the same way. Accumulate idioms. Standardize. The only difference(!) between Shakespeare and you was the size of his idiom list - not the size of his vocabulary.\n - Alan J. Perlis"
    "If you have a procedure with ten parameters, you probably missed some.\n - Alan J. Perlis"
    "Recursion is the root of computation since it trades description for time.\n - Alan J. Perlis"
    "If two people write exactly the same program, each should be put into microcode and then they certainly won't be the same.\n - Alan J. Perlis"
    "In the long run every program becomes rococo - then rubble.\n - Alan J. Perlis"
    "Everything should be built top-down, except the first time.\n - Alan J. Perlis"
    "Every program has (at least) two purposes: the one for which it was written, and another for which it wasn't.\n - Alan J. Perlis"
    "If a listener nods his head when you're explaining your program, wake him up.\n - Alan J. Perlis"
    "A program without a loop and a structured variable isn't worth writing.\n - Alan J. Perlis"
    "A language that doesn't affect the way you think about programming, is not worth knowing.\n - Alan J. Perlis"
    "Wherever there is modularity there is the potential for misunderstanding: Hiding information implies a need to check communication.\n - Alan J. Perlis"
    "Optimization hinders evolution.\n - Alan J. Perlis"
    "A good system can't have a weak command language.\n - Alan J. Perlis"
    "To understand a program you must become both the machine and the program.\n - Alan J. Perlis"
    "Perhaps if we wrote programs from childhood on, as adults we'd be able to read them.\n - Alan J. Perlis"
    "One can only display complex information in the mind. Like seeing, movement or flow or alteration of view is more important than the static picture, no matter how lovely.\n - Alan J. Perlis"
    "There will always be things we wish to say in our programs that in all known languages can only be said poorly.\n - Alan J. Perlis"
    "Once you understand how to write a program get someone else to write it.\n - Alan J. Perlis"
    "Around computers it is difficult to find the correct unit of time to measure progress. Some cathedrals took a century to complete. Can you imagine the grandeur and scope of a program that would take as long?\n - Alan J. Perlis"
    "For systems, the analogue of a face-lift is to add to the control graph an edge that creates a cycle, not just an additional node.\n - Alan J. Perlis"
    "In programming, everything we do is a special case of something more general -- and often we know it too quickly.\n - Alan J. Perlis"
    "Simplicity does not precede complexity, but follows it.\n - Alan J. Perlis"
    "Programmers are not to be measured by their ingenuity and their logic but by the completeness of their case analysis.\n - Alan J. Perlis"
    "The eleventh commandment was \"Thou Shalt Compute\" or \"Thou Shalt Not Compute\" - I forget which.\n - Alan J. Perlis"
    "The string is a stark data structure and everywhere it is passed there is much duplication of process. It is a perfect vehicle for hiding information.\n - Alan J. Perlis"
    "Everyone can be taught to sculpt: Michelangelo would have had to be taught not to. So it is with great programmers.\n - Alan J. Perlis"
    "The use of a program to prove the 4-color theorem will not change mathematics - it merely demonstrates that the theorem, a challenge for a century, is probably not important to mathematics.\n - Alan J. Perlis"
    "The most important computer is the one that rages in our skulls and ever seeks that satisfactory external emulator. The standarization of real computers would be a disaster - and so it probably won't happen.\n - Alan J. Perlis"
    "Structured Programming supports the law of the excluded middle.\n - Alan J. Perlis"
    "Re graphics: A picture is worth 10K words - but only those to describe the picture. Hardly any sets of 10K words can be adequately described with pictures.\n - Alan J. Perlis"
    "There are two ways to write error-free programs; only the third one works.\n - Alan J. Perlis"
    "Some programming languages manage to absorb change, but withstand progress.\n - Alan J. Perlis"
    "You can measure a programmer's perspective by noting his attitude on the continuing vitality of FORTRAN.\n - Alan J. Perlis"
    "In software systems, it is often the early bird that makes the worm.\n - Alan J. Perlis"
    "Sometimes I think the only universal in the computing field is the fetch-execute cycle.\n - Alan J. Perlis"
    "The goal of computation is the emulation of our synthetic abilities, not the understanding of our analytic ones.\n - Alan J. Perlis"
    "Like punning, programming is a play on words.\n - Alan J. Perlis"
    "As Will Rogers would have said, \"There is no such thing as a free variable.\"\n - Alan J. Perlis"
    "The best book on programming for the layman is \"Alice in Wonderland\"; but that's because it's the best book on anything for the layman.\n - Alan J. Perlis"
    "Giving up on assembly language was the apple in our Garden of Eden: Languages whose use squanders machine cycles are sinful. The LISP machine now permits LISP programmers to abandon bra and fig-leaf.\n - Alan J. Perlis"
    "When we understand knowledge-based systems, it will be as before -- except our fingertips will have been singed.\n - Alan J. Perlis"
    "Bringing computers into the home won't change either one, but may revitalize the corner saloon.\n - Alan J. Perlis"
    "Systems have sub-systems and sub-systems have sub-systems and so on ad infinitum - which is why we're always starting over.\n - Alan J. Perlis"
    "So many good ideas are never heard from again once they embark in a voyage on the semantic gulf.\n - Alan J. Perlis"
    "Beware of the Turing tar-pit in which everything is possible but nothing of interest is easy.\n - Alan J. Perlis"
    "A LISP programmer knows the value of everything, but the cost of nothing.\n - Alan J. Perlis"
    "Software is under a constant tension. Being symbolic it is arbitrarily perfectible; but also it is arbitrarily changeable.\n - Alan J. Perlis"
    "It is easier to change the specification to fit the program than vice versa.\n - Alan J. Perlis"
    "Fools ignore complexity. Pragmatists suffer it. Some can avoid it. Geniuses remove it.\n - Alan J. Perlis"
    "In English every word can be verbed. Would that it were so in our programming languages.\n - Alan J. Perlis"
    "In seeking the unattainable, simplicity only gets in the way.\n - Alan J. Perlis"
    "In programming, as in everything else, to be in error is to be reborn.\n - Alan J. Perlis"
    "In computing, invariants are ephemeral.\n - Alan J. Perlis"
    "When we write programs that \"learn\", it turns out that we do and they don't.\n - Alan J. Perlis"
    "Often it is the means that justify the ends: Goals advance technique and technique survives even when goal structures crumble.\n - Alan J. Perlis"
    "Make no mistake about it: Computers process numbers - not symbols. We measure our understanding (and control) by the extent to which we can arithmetize an activity.\n - Alan J. Perlis"
    "Making something variable is easy. Controlling duration of constancy is the trick.\n - Alan J. Perlis"
    "Think of all the psychic energy expended in seeking a fundamental distinction between \"algorithm\" and \"program\".\n - Alan J. Perlis"
    "If we believe in data structures, we must believe in independent (hence simultaneous) processing. For why else would we collect items within a structure? Why do we tolerate languages that give us the one without the other?\n - Alan J. Perlis"
    "In a 5 year period we get one superb programming language. Only we can't control when the 5 year period will be.\n - Alan J. Perlis"
    "Over the centuries the Indians developed sign language for communicating phenomena of interest. Programmers from different tribes (FORTRAN, LISP, ALGOL, SNOBOL, etc.) could use one that doesn't require them to carry a blackboard on their ponies.\n - Alan J. Perlis"
    "Documentation is like term insurance: It satisfies because almost no one who subscribes to it depends on its benefits.\n - Alan J. Perlis"
    "An adequate bootstrap is a contradiction in terms.\n - Alan J. Perlis"
    "It is not a language's weakness but its strengths that control the gradient of its change: Alas, a language never escapes its embryonic sac.\n - Alan J. Perlis"
    "Is it possible that software is not like anything else, that it is meant to be discarded: that the whole point is to see it as a soap bubble?\n - Alan J. Perlis"
    "Because of its vitality, the computing field is always in desperate need of new cliches: Banality soothes our nerves.\n - Alan J. Perlis"
    "It is the user who should parameterize procedures, not their creators.\n - Alan J. Perlis"
    "The cybernetic exchange between man, computer and algorithm is like a game of musical chairs: The frantic search for balance always leaves one of the three standing ill at ease.\n - Alan J. Perlis"
    "If your computer speaks English, it was probably made in Japan.\n - Alan J. Perlis"
    "A year spent in artificial intelligence is enough to make one believe in God.\n - Alan J. Perlis"
    "Prolonged contact with the computer turns mathematicians into clerks and vice versa.\n - Alan J. Perlis"
    "In computing, turning the obvious into the useful is a living definition of the word \"frustration\".\n - Alan J. Perlis"
    "We are on the verge: Today our program proved Fermat's next-to-last theorem.\n - Alan J. Perlis"
    "What is the difference between a Turing machine and the modern computer? It's the same as that between Hillary's ascent of Everest and the establishment of a Hilton hotel on its peak.\n - Alan J. Perlis"
    "Motto for a research laboratory: What we work on today, others will first think of tomorrow.\n - Alan J. Perlis"
    "Though the Chinese should adore APL, it's FORTRAN they put their money on.\n - Alan J. Perlis"
    "We kid ourselves if we think that the ratio of procedure to data in an active data-base system can be made arbitrarily small or even kept small.\n - Alan J. Perlis"
    "We have the mini and the micro computer. In what semantic niche would the pico computer fall?\n - Alan J. Perlis"
    "It is not the computer's fault that Maxwell's equations are not adequate to design the electric motor.\n - Alan J. Perlis"
    "One does not learn computing by using a hand calculator, but one can forget arithmetic.\n - Alan J. Perlis"
    "Computation has made the tree flower.\n - Alan J. Perlis"
    "The computer reminds one of Lon Chaney -- it is the machine of a thousand faces.\n - Alan J. Perlis"
    "The computer is the ultimate polluter: its feces are indistinguish- able from the food it produces.\n - Alan J. Perlis"
    "When someone says \"I want a programming language in which I need only say what I wish done,\" give him a lollipop.\n - Alan J. Perlis"
    "Interfaces keep things tidy, but don't accelerate growth: Functions do.\n - Alan J. Perlis"
    "Don't have good ideas if you aren't willing to be responsible for them.\n - Alan J. Perlis"
    "Computers don't introduce order anywhere as much as they expose opportunities.\n - Alan J. Perlis"
    "When a professor insists computer science is X but not Y, have compassion for his graduate students.\n - Alan J. Perlis"
    "In computing, the mean time to failure keeps getting shorter.\n - Alan J. Perlis"
    "In man-machine symbiosis, it is man who must adjust: The machines can't.\n - Alan J. Perlis"
    "We will never run out of things to program as long as there is a single program around.\n - Alan J. Perlis"
    "Dealing with failure is easy: Work hard to improve. Success is also easy to handle: You've solved the wrong problem. Work hard to improve.\n - Alan J. Perlis"
    "One can't proceed from the informal to the formal by formal means.\n - Alan J. Perlis"
    "Purely applicative languages are poorly applicable.\n - Alan J. Perlis"
    "The proof of a system's value is its existence.\n - Alan J. Perlis"
    "You can't communicate complexity, only an awareness of it.\n - Alan J. Perlis"
    "It's difficult to extract sense from strings, but they're the only communication coin we can count on.\n - Alan J. Perlis"
    "The debate rages on: is PL/I Bachtrian or Dromedary?\n - Alan J. Perlis"
    "Whenever two programmers meet to criticize their programs, both are silent.\n - Alan J. Perlis"
    "Think of it! With VLSI we can pack 100 ENIACS in 1 sq. cm.\n - Alan J. Perlis"
    "Editing is a rewording activity.\n - Alan J. Perlis"
    "Why did the Roman Empire collapse? What is Latin for office automation?\n - Alan J. Perlis"
    "Computer Science is embarrassed by the computer.\n - Alan J. Perlis"
    "The only constructive theory connecting neuroscience and psychology will arise from the study of software.\n - Alan J. Perlis"
    "Within a computer natural language is unnatural.\n - Alan J. Perlis"
    "Most people find the concept of programming obvious, but the doing impossible.\n - Alan J. Perlis"
    "You think you know when you can learn, are more sure when you can write, even more when you can teach, but certain when you can program.\n - Alan J. Perlis"
    "It goes against the grain of modern education to teach children to program. What fun is there in making plans, acquiring discipline in organizing thoughts, devoting attention to detail and learning to be self-critical?\n - Alan J. Perlis"
    "If you can imagine a society in which the computer- robot is the only menial, you can imagine anything.\n - Alan J. Perlis"
    "Programming is an unnatural act.\n - Alan J. Perlis"
    "Adapting old programs to fit new machines usually means adapting new machines to behave like old ones.\n - Alan J. Perlis"

    # Donald E. Knuth
    # https://en.wikiquote.org/wiki/Donald_Knuth
    "Beware of bugs in the above code; I have only proved it correct, not tried it.\n - Donald E. Knuth"
    "Science is knowledge which we understand so well that we can teach it to a computer; and if we don't fully understand something, it is an art to deal with it.\n - Donald E. Knuth"
    "In fact, my main conclusion after spending ten years of my life working on the TEX project is that software is hard. It’s harder than anything else I’ve ever had to do.\n - Donald E. Knuth"
    "Let us change our traditional attitude to the construction of programs: Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.\n - Donald E. Knuth"
    "The real problem is that programmers have spent far too much time worrying about efficiency in the wrong places and at the wrong times; premature optimization is the root of all evil (or at least most of it) in programming.\n - Donald E. Knuth"

    # Edsger W. Dijkstra
    # https://en.wikiquote.org/wiki/Edsger_W._Dijkstra
    "Testing shows the presence, not the absence of bugs.\n - Edsger W. Dijkstra"
    "The competent programmer is fully aware of the strictly limited size of his own skull; therefore he approaches the programming task in full humility, and among other things he avoids clever tricks like the plague.\n - Edsger W. Dijkstra"
    "LISP has been jokingly described as \"the most intelligent way to misuse a computer\". I think that description a great compliment because it transmits the full flavor of liberation: it has assisted a number of our most gifted fellow humans in thinking previously impossible thoughts.\n - Edsger W. Dijkstra"
    "Besides a mathematical inclination, an exceptionally good mastery of one's native tongue is the most vital asset of a competent programmer.\n - Edsger W. Dijkstra"
    "Simplicity is a great virtue but it requires hard work to achieve it and education to appreciate it. And to make matters worse: complexity sells better.\n - Edsger W. Dijkstra"
    "My point today is that, if we wish to count lines of code, we should not regard them as \"lines produced\" but as \"lines spent\": the current conventional wisdom is so foolish as to book that count on the wrong side of the ledger.\n - Edsger W. Dijkstra"

    # mics
    "There are two ways of constructing a software design. One way is to make it so simple that there are obviously no deficiencies. And the other way is to make it so complicated that there are no obvious deficiencies.\n - C.A.R. Hoare"
    "There are only two hard things in Computer Science: cache invalidation and naming things.\n - Phil Karlton"
    "There are 2 hard problems in computer science: cache invalidation, naming things, and off-by-1 errors.\n - https://martinfowler.com/bliki/TwoHardThings.html"
    "Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.\n - Martin Golding"
    "The trouble with programmers is that you can never tell what a programmer is doing until it’s too late.\n - Seymour Cray"
    "First learn computer science and all the theory. Next develop a programming style. Then forget all that and just hack.\n - George Carrette"
    "Debugging is twice as hard as writing the code in the first place. Therefore, if you write the code as cleverly as possible, you are, by definition, not smart enough to debug it.\n - Brian W. Kernighan"
    "Measuring programming progress by lines of code is like measuring aircraft building progress by weight.\n - Bill Gates"
    "The best programmers are not marginally better than merely good ones. They are an order-of-magnitude better, measured by whatever standard: conceptual creativity, speed, ingenuity of design, or problem-solving ability.\n - Randall E. Stross"
    "For a long time it puzzled me how something so expensive, so leading edge, could be so useless. And then it occurred to me that a computer is a stupid machine with the ability to do incredibly smart things, while computer programmers are smart people with the ability to do incredibly stupid things. They are, in short, a perfect match.\n - Bill Bryson"
    "You can’t have great software without a great team, and most software teams behave like dysfunctional families.\n - Jim McCarthy"
    "Incorrect documentation is often worse than no documentation.\n - Bertrand Meyer"
    "Correctness is clearly the prime quality. If a system does not do what it is supposed to do, then everything else about it matters little.\n - Bertrand Meyer"
    "I would love to change the world, but they won't give me the source code.\n - Anonymous"
    "Any fool can write code that a computer can understand. Good programmers write code that humans can understand.\n - Martin Fowler"
    "I am not a great programmer; I am just a good programmer with great habits.\n - Kent Beck"
    "A Computer is a state machine. Threads are for people who can't program state machines.\n - Alan Cox"
    "Not everything worth doing is worth doing well.\n - Tom West"
    "Peace comes from thinking.\n - N.S.A"
  )

  _zp_hq::print_quote "${_zp_hq_hacker_quotes[RANDOM % $#_zp_hq_hacker_quotes + 1]}"

  # release memory
  unset _zp_hq_hacker_quotes
fi
