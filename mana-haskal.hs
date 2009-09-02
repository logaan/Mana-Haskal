import Network.Loli
import Hack.Handler.Happstack
import MPS.Light ((-))
import Prelude hiding ((-))
import Text.RJson

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

forest = Card{
  cardName = "Forest",
  cardType = "Basic Land - Forest",
  cardCost = Nothing,
  cardPT   = Nothing,
  cardText = ""
}

main = run . loli - do

  get "/say/:user/:message" - do
    text . show =<< captures

  get "/" (text $ show forest)

