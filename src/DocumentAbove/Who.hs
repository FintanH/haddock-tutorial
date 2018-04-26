
module DocumentAbove.Who where

data Who a b
  -- | This is 'Me'
  = Me a
  -- | And this is 'You'
  | You b

data BothOfUs a b = BothOfUs
  { -- | You can get at 'me'
    me  :: Who a b
    -- | Or you can get at 'you'
  , you :: Who b b
  }
