
module DocumentAbove.Secret where

class Secret a where
  -- | This 'encrypt's your secret :o
  encrypt :: a -> String

  -- | This 'decrypt's your secret :D
  decrypt :: String -> a
