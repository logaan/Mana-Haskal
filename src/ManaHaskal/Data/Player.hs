module ManaHaskal.Data.Player
where

import ManaHaskal.Data.Board

-- Player
--
type Name = String
type Life = Integer
data Player = Player {
  playerName::Name,
  playerLife::Life,
  playerBoard::Board
} deriving Show

