module ManaHaskal.Utilities
where

import Data.List (groupBy, filter)

{--
 - splitNull takes a list of lists and breaks them into
 - groups of non-null lists in sequential order
--}
splitNull :: [[a]] -> [[[a]]]
splitNull = map (filter $ not . null) . groupBy (const $ not . null)

{--
 - Text versions of the splitNull function.
--}
type Line = String
type Paragraph = [Line]

paragraphs :: [Line] -> [Paragraph]
paragraphs = splitNull
