module ManaHaskal.Data.Zone
where

import ManaHaskal.Data.Card
import Data.List (delete)

-- Zone
--
data Zone = Zone {
  zoneCards::[Card]
} deriving Show

deleteCard :: Zone -> Card -> Zone
deleteCard (Zone cards) card = Zone (delete card cards)

addCard :: Zone -> Card -> Zone
addCard (Zone cards) card = Zone (card:cards)

move :: Card -> Zone -> Zone -> (Zone, Zone)
move card from to = (deleteCard from card, addCard to card)
