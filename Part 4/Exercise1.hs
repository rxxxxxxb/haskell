data JSON = JNull
          | JBool Bool
          | JInt Int
          | JFloat Float
          | JString String
          | JArray [JSON]
          | JObject [(String, JSON)]
  deriving Show

class ToJSON a where 
    toJSON :: a -> JSON

instance ToJSON Bool where
    -- toJSON :: Bool -> JSON
    toJSON b = JBool b

instance ToJSON Int where
    --toJSON :: Int -> JSON
    toJSON n = JInt n

instance ToJSON Float where
    toJSON f = JFloat f

instance ToJSON a => ToJSON [a] where
-- toJSON :: [a] -> JSON
    toJSON xs = JArray (map toJSON xs)


instance (ToJSON a, ToJSON b) => ToJSON (a,b) where
    toJSON (x,y) = JObject [("fst",toJSON x),("snd",toJSON y)] 


json1 = toJSON (3 :: Int)
json2 = toJSON [True, False]
json3 = toJSON (7 :: Int,[False])
    