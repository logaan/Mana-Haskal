module ManaHaskal.Data
where

data Card = Card {
  cardName::String,
  cardType::String,
  cardCost::Maybe String,
  cardPT::Maybe String,
  cardText::String
} deriving Show

class Zone a

data Library = Library [Card]
instance Zone Library

data Hand = Hand [Card]
instance Zone Hand

data Battlefield = Battlefield [Card]
instance Zone Battlefield

data Graveyard = Graveyard [Card]
instance Zone Graveyard

data TheStack = TheStack [Card]
instance Zone TheStack

data Exile = Exile [Card]
instance Zone Exile

type Name = String
type Life = Integer
data Player = Player Name Life