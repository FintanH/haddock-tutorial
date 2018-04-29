
module DocumentAbove.Capitalise where

import           Data.Bifunctor (first)
import           Data.Char (toUpper)
import qualified Data.Text as T

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

-- | 'capitalise' specialised to 'T.Text' using the 'first' function from "Data.Bifunctor".
capitaliseT :: T.Text -> T.Text
capitaliseT = maybe T.empty (uncurry T.cons . first toUpper) . T.uncons
