module ManaHaskal.Data
where

import Data.List(delete)

-- Card
--
data Card = Card {
  cardName::String,
  cardType::String,
  cardCost::Maybe String,
  cardPT::Maybe String,
  cardText::String
} deriving (Show, Eq)

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

-- Player
--
type Name = String
type Life = Integer
data Player = Player {
  playerName::Name,
  playerLife::Life,
  playerBoard::Board
} deriving Show

