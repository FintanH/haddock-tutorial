
module DocumentBelow.Capitalise where

import Data.Char (toUpper)

capitalise :: String -> String
-- ^ The 'capitalise' function capitalises on your losses.
--   But it also capitalises a word.
capitalise []       = []
capitalise (c : cs) = toUpper c : cs
