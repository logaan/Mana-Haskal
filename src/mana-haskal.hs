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

-- Game logic
-- 
llanowar_elf = Card {
  cardName = "Llanowar Elf",
  cardType = "Create - Elf", 
  cardCost = Just "G",
  cardPT   = Just "1/1",
  cardText = "T: Add one green mana to your mana pool."
}

forest = Card {
  cardName = "Forest",
  cardType = "Basic Land - Forest",
  cardCost = Nothing,
  cardPT   = Nothing,
  cardText = ""
}

logan = Player {
  playerName  = "Logan",
  playerLife  = 20,
  playerBoard = Board {
    boardLibrary     = Zone [],
    boardHand        = Zone [],
    boardBattlefield = Zone [],
    boardGraveyard   = Zone [],
    boardStack       = Zone [],
    boardExile       = Zone []
  }
}

hand = Zone [llanowar_elf, forest]
graveyard = Zone []
kill_elf = move llanowar_elf hand graveyard

main = run . loli - do

  get "/" - do
    (text $ show kill_elf )

