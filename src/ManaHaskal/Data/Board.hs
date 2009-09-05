module ManaHaskal.Data.Board
where

import ManaHaskal.Data.Zone

-- Board
--
data Board = Board {
  boardLibrary      :: Zone,
  boardHand         :: Zone,
  boardBattlefield  :: Zone,
  boardGraveyard    :: Zone,
  boardStack        :: Zone,
  boardExile        :: Zone
} deriving Show
