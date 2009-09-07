import Data.List

type Line = String
type Para = [Line]

paragraphs :: [Line] -> [Para]
paragraphs = map (filter $ not . null) . groupBy (const $ not . null)
