module ManaHaskal.Data.Card
where

data Card = Card {
  cardName::String,
  cardType::String,
  cardCost::Maybe String,
  cardPT::Maybe String,
  cardText::String
} deriving (Show, Eq)

type Cards = [Card]
