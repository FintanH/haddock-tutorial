
module DocumentAbove.Capitalise where

import Data.Char (toUpper)

-- | The 'capitalise' function capitalises on your losses.
--   But it also capitalises a word.
--
--   Note: That this function assumes the first argument is
--   a single word!
--
-- @
-- capitalise \"hello\" == \"Hello\"
-- @
--
-- > capitalise "world" == "World"
--
-- >>> capitalise "fintan"
-- "Fintan"
--
-- Preserves the length of the input
--
-- prop> length xs == length (capitalise xs)
capitalise :: String -> String
capitalise []       = []
capitalise (c : cs) = toUpper c : cs
