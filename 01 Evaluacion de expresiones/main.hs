
sumar :: Integer -> Integer -> Integer
sumar x y= x+y

factorial :: Integer -> Integer
factorial 0= 1 
factorial n=n * factorial (n-1)

 menu :: IO ()
menu= do
    putStrLn("XxX== MENÚ ==XxX")
    putStrLn("Que deseas hacer?")
    putStrLn("1) Factorial")
    opcion <- getLine
    
    case opcion of
        "1" -> do 
        putStrLn("Introduce el numero: ")
        n1 <- getLine
        let x = read n1 :: Integer
        putStrLn("El resultado es: "++show (factorial x))
        menu
    "2" -> do
        putStrLn("Adios")
       ->do
        putStrLn("Favor de poner una opcion valida")
        menu
    menu
main :: IO()
main = print(sumar 10 20)
main = print(factorial 5)
main = menu