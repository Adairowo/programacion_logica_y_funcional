absoluto :: Integer -> Integer
absoluto x = abs x

entero :: Double -> Integer
entero x = ceiling x

siguiente :: Double -> Double
siguiente x = succ x

menorque :: Double -> Double -> Double
menorque x y = min x y

mayorque :: Double -> Double -> Double
mayorque x y = max x y

division :: Integer -> Integer -> Integer
division x y = div x y

modulo :: Integer -> Integer -> Integer
modulo x y = mod x y

esPar :: Integer -> Bool
esPar x = even x

piso :: Double -> Integer
piso x = floor x

mcd :: Integer -> Integer -> Integer
mcd x y = gcd x y

negacion :: Bool -> Bool
negacion x = not x

esImpar :: Integer -> Bool
esImpar x = odd x

signo :: Integer -> Integer
signo x = signum x

segundoElemento :: (Integer, Integer) -> Integer
segundoElemento (x, y) = snd (x, y)

menu :: IO()
menu = do
    putStrLn "=== MENU ==="
    putStrLn "Que deseas hacer?"
    putStrLn "1) Valor Absoluto"
    putStrLn "2) Valor Entero"
    putStrLn "3) Valor Siguiente"
    putStrLn "4) Numero Menor"
    putStrLn "5) Numero Mayor"
    putStrLn "6) Division Entera"
    putStrLn "7) Modulo"
    putStrLn "8) Verificar si es Par"
    putStrLn "9) Mayor entero no mayor que x"
    putStrLn "10) Maximo Comun Divisor"
    putStrLn "11) Negacion Booleana"
    putStrLn "12) Verificar si es Impar"
    putStrLn "13) Signo del numero"
    putStrLn "14) Segundo elemento de tupla"
    putStrLn "15) Salir"



    opcion <- getLine
    case opcion of
        "1" -> do
             putStrLn "Introduce el Numero"
             n1 <- getLine
             let x = read n1 :: Integer
             putStrLn ("El resultado es: " ++ show (abs x))
             menu 
        "2" -> do
             putStrLn "Introduce el Numero"
             n1 <- getLine
             let x = read n1 :: Double
             putStrLn ("El resultado es: " ++ show (ceiling x))
             menu 
        "3" -> do
             putStrLn "Introduce el Numero"
             n1 <- getLine
             let x = read n1 :: Double
             putStrLn ("El resultado es: " ++ show (succ x))
             menu 
        "4" -> do
             putStrLn "Introduce el Primer Numero"
             n1 <- getLine
             let x = read n1 :: Double
             putStrLn "Introduce el SegundO Numero"
             n2 <- getLine
             let y = read n2 :: Double
             putStrLn ("El numero menor es : " ++ show ( min x y))
             menu 
        "5" -> do
             putStrLn "Introduce el Primer Numero"
             n1 <- getLine
             let x = read n1 :: Double
             putStrLn "Introduce el SegundO Numero"
             n2 <- getLine
             let y = read n2 :: Double
             putStrLn ("El numero mayor es: " ++ show ( max x y))
             menu 
        "6" -> do
             putStrLn "Introduce el Dividendo"
             n1 <- getLine
             let x = read n1 :: Integer
             putStrLn "Introduce el Divisor"
             n2 <- getLine
             let y = read n2 :: Integer
             if y == 0 
                then do
                    putStrLn "Error: No se puede dividir por cero"
                    menu
                else do
                    putStrLn ("La division es: " ++ show (div x y))
                    menu 
        "7" -> do
             putStrLn "Introduce el Primer Numero"
             n1 <- getLine
             let x = read n1 :: Integer
             putStrLn "Introduce el Segundo Numero"
             n2 <- getLine
             let y = read n2 :: Integer
             if y == 0 
                then do
                    putStrLn "Error: No se puede calcular modulo con divisor cero"
                    menu
                else do
                    putStrLn ("El modulo es: " ++ show (mod x y))
                    menu 
        "8" -> do
             putStrLn "Introduce el Numero"
             n1 <- getLine
             let x = read n1 :: Integer
             putStrLn ("¿Es par? " ++ show (even x))
             menu 
        "9" -> do
             putStrLn "Introduce el Numero (decimal)"
             n1 <- getLine
             let x = read n1 :: Double
             putStrLn ("El floor es: " ++ show (floor x))
             menu 
        "10" -> do
             putStrLn "Introduce el Primer Numero"
             n1 <- getLine
             let x = read n1 :: Integer
             putStrLn "Introduce el Segundo Numero"
             n2 <- getLine
             let y = read n2 :: Integer
             putStrLn ("El MCD es: " ++ show (gcd x y))
             menu 
        "11" -> do
             putStrLn "Introduce el valor booleano (True/False)"
             n1 <- getLine
             let x = read n1 :: Bool
             putStrLn ("La negacion es: " ++ show (not x))
             menu 
        "12" -> do
             putStrLn "Introduce el Numero"
             n1 <- getLine
             let x = read n1 :: Integer
             putStrLn ("¿Es impar? " ++ show (odd x))
             menu 
        "13" -> do
             putStrLn "Introduce el Numero"
             n1 <- getLine
             let x = read n1 :: Integer
             putStrLn ("El signo es: " ++ show (signum x))
             menu 
        "14" -> do
             putStrLn "Introduce el Primer Numero de la tupla"
             n1 <- getLine
             let x = read n1 :: Integer
             putStrLn "Introduce el Segundo Numero de la tupla"
             n2 <- getLine
             let y = read n2 :: Integer
             putStrLn ("El segundo elemento es: " ++ show (snd (x, y)))
             menu
        "15" -> do
            putStrLn "ADIOS"
            return () 
        _ -> do
            putStrLn "Opcion no valida"
            menu

main :: IO()
main = menu