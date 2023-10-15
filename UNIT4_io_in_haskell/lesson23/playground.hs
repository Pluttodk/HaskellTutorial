import qualified Data.Text as T

wordAsString :: String
wordAsString = "Funky"

wordAsText :: T.Text
wordAsText = T.pack wordAsString

wordAsStringPrevText :: String
wordAsStringPrevText = T.unpack wordAsText

