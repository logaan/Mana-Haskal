module ManaHaskal.List
where

import Data.List (groupBy, filter)

splitNull :: [[a]] -> [[[a]]]
splitNull = map (filter $ not . null) . groupBy (const $ not . null)
