cortarcadena :: String -> [(String, Int)]
cortarcadena sentence = zip (words sentence) (map length (words sentence))