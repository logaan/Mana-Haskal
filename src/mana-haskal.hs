module Main (main)
where

-- Project Libraries
--
import ManaHaskal.Data

-- External libraries
--
import Network.Loli
import Hack.Handler.Happstack
import MPS.Light ((-))
import Prelude hiding ((-))

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
