--Q19.2 Maybe map
maybeMap :: (a -> b) ->  [Maybe a] -> [Maybe b]
maybeMap _ [Nothing] = [Nothing]
maybeMap f [Just el] = [Just (f el)]
maybeMap f (Just el:rest) = Just (f el):maybeMap f rest