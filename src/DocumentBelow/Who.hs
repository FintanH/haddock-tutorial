
module DocumentBelow.Who where

data Who a b
  = Me a  -- ^ This is 'Me'
  | You b -- ^ And this is 'You'

data BothOfUs a b = BothOfUs
  { me  :: Who a b -- ^ You can get at 'me'
  , you :: Who a b -- ^ Or you can get at 'you'
  }

toMeToYou :: Who a b      -- ^ It's just 'Me'
          -> Who a b      -- ^ It's just 'You'
          -> BothOfUs a b -- ^ But now we're having fun together as 'BothOfUs'
toMeToYou me you = BothOfUs me you
