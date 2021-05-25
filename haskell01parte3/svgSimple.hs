import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String --Serve como "iniciador" da imagem, definindo a altura e largura
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String --Termina o programa
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String --Recebe as caracteristicas do circulo e printa ele
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String --Chama o svgBegin, manda as caracteriscas do circulo para os svgCircle, depois chama o svgEnd.
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 60 60 50 "rgb(10, 145, 32, 0.4)") ++ 
  (svgCircle 90 90 50 "rgb(105, 14, 30, 0.4)") ++ 
  (svgCircle 70 70 50 "rgb(0, 180, 240, 0.4)") ++ 
  (svgCircle 50 50 50 "rgb(250, 130, 115, 0.4)") ++ 
  (svgCircle 100 100 50 "rgb(255, 20, 145, 0.4)") ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll --Chama o svgAll, e coloca o resultado dele num arquivo 'circles.svg'