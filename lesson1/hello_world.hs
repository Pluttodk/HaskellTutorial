main = do
    print "Hello World!"

toPart name = "Dear " ++ name ++ ",\n"

messyMain :: IO()
messyMain = do
    print "What email should i sent to?"
    mail <- getLine
    print "Title of email?"
    title <- getLine
    print "Who is the author"
    author <- getLine
    print ("Dear" ++ mail ++ ",\n" ++ 
        "You sent the mail with title:"  ++ title ++ "\n" ++
        "Thanks \n" ++ author)