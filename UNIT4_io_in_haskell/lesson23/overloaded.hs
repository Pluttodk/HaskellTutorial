{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T

aWord :: T.Text
aWord = "Works with T.Text because of the overloadedstrings"

-- Other language extensions
-- ViewPatterns (More sophisticated pattern matching)
-- TemplateHaskell (Provide tools for metaprogramming)
-- DuplicateRecordFields (Solve the problem where the same field name but different type causes a problem)
-- NoImplicitPrelude (Avoid using default prelude)