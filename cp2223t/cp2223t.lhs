\documentclass[a4paper]{article}
\usepackage[a4paper,left=3cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\usepackage[sfdefault, book, lf]{FiraSans} % lf - lined numbers
\usepackage[colorlinks=true]{hyperref}
\usepackage{graphicx}
\usepackage{cp2223t}
\usepackage{subcaption}
\usepackage{adjustbox}
\usepackage[indent=12pt]{parskip}

%================= lhs2tex=====================================================%
%include polycode.fmt
%format succ = "succ "
%format (div (x)(y)) = x "\div " y
%format ==> = "\Longrightarrow "
%format map = "\map "
%format length = "\length "
%format fst = "\p1"
%format p1  = "\p1"
%format snd = "\p2"
%format p2  = "\p2"
%format Left = "i_1"
%format Right = "i_2"
%format i1 = "i_1"
%format i2 = "i_2"
%format >< = "\times"
%format >|<  = "\bowtie "
%format |-> = "\mapsto"
%format . = "\comp "
%format .=?=. = "\mathbin{\stackrel{\mathrm{?}}{=}}"
%format -|- = "+"
%format conc = "\mathsf{conc}"
%format summation = "{\sum}"
%format (either (a) (b)) = "\alt{" a "}{" b "}"
%format (frac (a) (b)) = "\frac{" a "}{" b "}"
%format (uncurry f) = "\uncurry{" f "}"
%format (const (f)) = "\underline{" f "}"
%format (lcbr (x)(y)) = "\begin{lcbr}" x "\\" y "\end{lcbr}"
%format (lcbr3 (x)(y)(z)) = "\begin{lcbr}" x "\\" y "\\" z "\end{lcbr}"
%format (split (x) (y)) = "\conj{" x "}{" y "}"
%format (for (f) (i)) = "\for{" f "}\ {" i "}"
%format <$> = "\mathbin{\mathopen{\langle}\$\mathclose{\rangle}}"
%format Either a b = a "+" b
%format fmap = "\mathsf{fmap}"
%format NA   = "\textsc{na}"
%format NB   = "\textbf{NB}"
%format inT = "\mathsf{in}"
%format outT = "\mathsf{out}"
%format outLTree = "\mathsf{out}_{\tiny\ \textit{LTree}}"
%format inLTree = "\mathsf{in}_{\tiny\ \textit{LTree}}"
%format inFTree = "\mathsf{in}_{\tiny\ \textit{FTree}}"
%format outFTree = "\mathsf{out}_{\tiny\ \textit{FTree}}"
%format inExp = "\mathsf{in}_{\tiny\ \textit{Exp}}"
%format outExp = "\mathsf{out}_{\tiny\ \textit{Exp}}"
%format Null = "1"
%format (Prod (a) (b)) = a >< b
%format fF = "\fun F "
%format l2 = "l_2 "
%format Dist = "\fun{Dist}"
%format IO = "\fun{IO}"
%format LTree = "{\LTree}"
%format FTree = "{\FTree}"
%format inNat = "\mathsf{in}"
%format (cata (f)) = "\llparenthesis\, " f "\,\rrparenthesis"
%format (cataNat (g)) = "\llparenthesis\, " g "\,\rrparenthesis"
%format (cataList (g)) = "\llparenthesis\, " g "\,\rrparenthesis"
%format (cataLTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataFTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataRose (x)) = "\llparenthesis\, " x "\,\rrparenthesis_\textit{\tiny R}"
%format (cataExp (x)) = "\llparenthesis\, " x "\,\rrparenthesis_\textit{\tiny Exp}"
%format (ana (g)) = "\ana{" g "}"
%format (anaList (g)) = "\anaList{" g "}"
%format (anaLTree (g)) = "\lanabracket\;\!" g "\;\!\ranabracket"
%format (anaRose (g)) = "\lanabracket\;\!" g "\;\!\ranabracket_\textit{\tiny R}"
%format (anaExp (g)) = "\lanabracket\;\!" g "\;\!\ranabracket_\textit{\tiny Exp}"
%format (hylo (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket"
%format (hyloRose (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket_\textit{\tiny R}"
%format (hyloExp (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket_\textit{\tiny Exp}"
%format Nat0 = "\N_0"
%format Rational = "\Q "
%format toRational = " to_\Q "
%format fromRational = " from_\Q "
%format muB = "\mu "
%format (frac (n)(m)) = "\frac{" n "}{" m "}"
%format (fac (n)) = "{" n "!}"
%format (underbrace (t) (p)) = "\underbrace{" t "}_{" p "}"
%format matrix = "matrix "
%format `ominus` = "\mathbin{\ominus}"
%format <-> = "{\,\leftrightarrow\,}"
%format <|> = "{\,\updownarrow\,}"
%format `minusNat`= "\mathbin{-}"
%format ==> = "\Rightarrow"
%format .==>. = "\Rightarrow"
%format .<==>. = "\Leftrightarrow"
%format .==. = "\equiv"
%format .<=. = "\leq"
%format .&&&. = "\wedge"
%format cdots = "\cdots "
%format pi = "\pi "
%format (curry (f)) = "\overline{" f "}"
%format delta = "\Delta "
%format (plus (f)(g)) = "{" f "}\plus{" g "}"
%format ++ = "\mathbin{+\!\!\!+}"
%format Integer  = "\mathbb{Z}"
%format (Cp.cond (p) (f) (g)) = "\mcond{" p "}{" f "}{" g "}"
\def\plus{\mathbin{\dagger}}
%format square (x) = x "^2"
%format a1 = "a_1 "	
%format a2 = "a_2 "	
%format a3 = "a_3 "	
%format a4 = "a_4 "	
%format b1 = "b_1 "	
%format b2 = "b_2 "	
%format b3 = "b_3 "	
%format b4 = "b_4 "	
%format c1 = "c_1 "	
%format c2 = "c_2 "	
%format c3 = "c_3 "	
%format c4 = "c_4 "	
%format d1 = "d_1 "	
%format d2 = "d_2 "	
%format d3 = "d_3 "	
%format d4 = "d_4 "	
%format r1 = "r_1 "	
%format r2 = "r_2 "	
%format s1 = "s_1 "	
%format s2 = "s_2 "	
%format e1 = "e_1 "	
%format e2 = "e_2 "	
\def\kcomp{\mathbin{\bullet}}
%format (kcomp (f) (g)) = f "\kcomp " g
%format .! = "\kcomp"
%---------------------------------------------------------------------------

\title{
          \textbf{Cálculo de Programas}
\\
          Trabalho Prático
\\
          LEI --- 2022/23
}

\author{
          \dium
\\
          Universidade do Minho
}


\date\mydate

\makeindex
\newcommand{\rn}[1]{\textcolor{Red}{#1}}
\begin{document}
\emergencystretch 3em
%\sloppy

\maketitle

\begin{center}\large
\begin{tabular}{ll}
Grupo nr. & 12
\\\hline
a94913 & José Manuel Antunes de Carvalho
\\
a97031 & Miguel Filipe Cidade da Silva 
\\
a96351 & Luis Alberto Barreiro Araújo
\\
a92926 & Marisa Ferreira Soares
\end{tabular}
\end{center}

\section*{Preâmbulo}

\CP\ tem como objectivo principal ensinar
a progra\-mação de computadores como uma disciplina científica. Para isso
parte-se de um repertório de \emph{combinadores} que formam uma álgebra da
programação (conjunto de leis universais e seus corolários) e usam-se esses
combinadores para construir programas \emph{composicionalmente}, isto é,
agregando programas já existentes.

Na sequência pedagógica dos planos de estudo dos cursos que têm
esta disciplina, opta-se pela aplicação deste método à programação
em \Haskell\ (sem prejuízo da sua aplicação a outras linguagens
funcionais). Assim, o presente trabalho prático coloca os
alunos perante problemas concretos que deverão ser implementados em
\Haskell.  Há ainda um outro objectivo: o de ensinar a documentar
programas, a validá-los e a produzir textos técnico-científicos de
qualidade.

Antes de abodarem os problemas propostos no trabalho, os grupos devem ler
com atenção o anexo \ref{sec:documentacao} onde encontrarão as instruções
relativas ao sofware a instalar, etc.

%if False
\begin{code}
{-# OPTIONS_GHC -XNPlusKPatterns #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, DeriveDataTypeable, FlexibleInstances #-}
module Main where
import Cp
import List hiding (fac)
import NEList (out)
import Exp
import Nat hiding (aux)
import LTree
import Rose hiding (g)
import Probability
import Data.List hiding (find)
import Data.List.Split hiding (split,chunksOf) 
import Svg hiding (for,wrap)
import Control.Concurrent
import Cp2223data

main = undefined
instance Strong Dist
\end{code}
%endif

\Problema
Suponha-se uma sequência numérica semelhante à sequência de Fibonacci tal
que cada termo subsequente aos três primeiros corresponde à soma dos três
anteriores, sujeitos aos coeficientes |a|, |b| e |c|:
\begin{code}
f a b c 0 = 0
f a b c 1 = 1
f a b c 2 = 1
f a b c (n+3) = a * f a b c (n+2) + b * f a b c (n+1) + c * f a b c n
\end{code}
Assim, por exemplo, |f 1 1 1| irá dar como resultado a sequência:
\begin{spec}
1, 1, 2, 4, 7, 13, 24, 44, 81, 149, ...
\end{spec}
|f 1 2 3| irá gerar a sequência:
\begin{spec}
1,1,3,8,17,42,100,235,561,1331, ...
\end{spec}
etc.

A definição de |f| dada é muito ineficiente, tendo uma degradação do tempo
de execução exponencial.
Pretende-se otimizar a função dada convertendo-a para um ciclo \textit{for}.
Recorrendo à lei de recursividade mútua, calcule |loop| e |initial| em
\begin{code}
fbl a b c = wrap . (for ((loop a b c)) initial)
\end{code}
por forma a |f| e |fbl| serem (matematicamente) a mesma função. 
Para tal, poderá usar a regra prática explicada no anexo \ref{sec:mr}.

\textbf{Valorização}: apresente testes de \textit{performance} que mostrem
quão mais rápida é |fbl| quando comparada com |f|.

\Problema
Pretende-se vir a classificar os conteúdos programáticos de todas as
\href{https://web.di.uminho.pt/sitedi/ucs/}{UCs} lecionadas no \dium\ de
acordo com o \href{https://dl.acm.org/ccs}{ACM Computing Classification System}.
A listagem da taxonomia desse sistema está disponível no ficheiro
\texttt{Cp2223data}, 
começando com
\begin{spec}
acm_ccs = [  "CCS",
             "    General and reference",
             "        Document types",
             "            Surveys and overviews",
             "            Reference works",
             "            General conference proceedings",
             "            Biographies",
             "            General literature",
             "            Computing standards, RFCs and guidelines",
             "        Cross-computing tools and techniques",
\end{spec}
(10 primeiros ítens) etc., etc.\footnote{Informação obtida a partir do site
\href{https://dl.acm.org/ccs}{ACM CCS} selecionando \emph{Flat View}.}

Pretende-se representar a mesma informação sob a forma de uma árvore de expressão,
usando para isso a biblioteca \Exp\ que consta do material padagógico da disciplina e
que vai incluída no zip do projecto, por  ser mais conveniente para os alunos.

\begin{enumerate}
\item Comece por definir a função de conversão do texto dado em |acm_ccs|
(uma lista de \emph{strings}) para uma tal árvore como um anamorfismo de \Exp:
%
\begin{code}
tax :: [String] -> Exp String String
tax = anaExp gene
\end{code}
Ou seja, defina o |gene| do anamorfismo, 
tendo em conta o seguinte diagrama\footnote{|S| abrevia |String|.}:
\begin{eqnarray*}
\xymatrix{
  |Exp S S| & & S + S \times (|Exp S S|)^*\ar[ll]_{|inExp|} \\
  S^*\ar@@/_1.5pc/[rr]_{|gene|}\ar[r]^(0.35){|out|}\ar[u]^{|tax|} & S + S \times S^*\ar[r]^(0.45){\cdots} & S + S \times (S^*)^*\ar[u]_{id + id \times tax^*}
}
\end{eqnarray*}
Para isso, tome em atenção que cada nível da hierarquia é, em |acm_ccs|,
marcado pela indentação de 4 espaços adicionais --- como se mostra no fragmento acima.

Na figura \ref{fig:P1} mostra-se a representação gráfica da árvore de tipo \Exp\ que representa o fragmento de |acm_ccs| mostrado acima.

\begin{figure}[ht!]
\centering
\begin{tikzpicture}
[-,every node/.style={shape=rectangle,inner sep=3pt,draw}]
\footnotesize
\node {CSS} [edge from parent fork down]
  [sibling distance=4cm]
  child {node [align=center] {General and\\reference}
    [sibling distance=4cm]
    child {node {Document types}
      [sibling distance=2.25cm]
      child {node [align=center] {Surveys and\\overviews}}
      child {node [align=center] {Reference\\works}}
      child {node [align=center] {General\\conference\\proceedings}}
      child {node [align=center] {Biographies}}
      child {node [align=center] {General\\literature}}
      child {node [align=center, xshift=0.75cm] {Computing standards,\\RFCs and\\guidelines}}
    }
    child {node [align=center] {Cross-computing tools and\\techniques}}
  }
  ;
\end{tikzpicture}
\caption{Fragmento de |acm_ccs| representado sob a forma de uma árvore do tipo \Exp.}
\label{fig:P1}
\end{figure}

\item De seguida vamos querer todos os caminhos da árvore que é gerada por |tax|,
pois a classificação de uma UC pode ser feita a qualquer nível (isto é, caminho
descendente da raiz |"CCS"| até um subnível ou folha).
\footnote{Para um exemplo de classificação de UC concreto, pf.\  ver a secção \textbf{Classificação ACM} na página
pública de \CP.}

Precisamos pois da composição de |tax| com uma função de pós-processamento |post|,
%
\begin{code}
tudo :: [String] -> [[String]]
tudo = post . tax
\end{code}
para obter o efeito que se mostra na tabela \ref{table:acmccs}.

\begin{table}[ht!]
\centering\small
\begin{center}
\begin{tabular}{||l||l||l||l||}
\hline
CCS & & & 
\\\hline
CCS & General and reference & & 
\\\hline
CCS & General and reference & Document types & 
\\\hline
CCS & General and reference & Document types & Surveys and overviews
\\\hline
CCS & General and reference & Document types & Reference works
\\\hline
CCS & General and reference & Document types & General conference proceedings
\\\hline
CCS & General and reference & Document types & Biographies
\\\hline
CCS & General and reference & Document types & General literature
\\\hline
CCS & General and reference & Cross-computing tools and techniques & 
\\\hline
\end{tabular}
\end{center}
\caption{Taxonomia ACM fechada por prefixos (10 primeiros ítens).}
\label{table:acmccs}
\end{table}

Defina a função |post :: Exp String String -> [[String]]| da forma mais económica que encontrar.
\end{enumerate}

\textbf{Sugestão}: Inspecione as bibliotecas fornecidas à procura de funções
auxiliares que possa re-utilizar para a sua solução ficar mais simples.
Não se esqueça que, para o mesmo resultado,
nesta disciplina \emph{``ganha'' quem escrever menos código}!

\textbf{Sugestão}: Para efeitos de testes intermédios não use a totalidade de |acm_ccs|,
que tem 2114 linhas! Use, por exemplo, |take 10 acm_ccs|, como se mostrou acima.

\Problema

O \sierpCarpet{tapete de Sierpinski} é uma figura geométrica \fractal\ em que um quadrado é subdividido recursivamente em sub-quadrados. A construção clássica do tapete de Sierpinski é a seguinte: assumindo um quadrado de lado |l|, este é subdivido em 9 quadrados iguais de lado |l / 3|, removendo-se o quadrado central. Este passo é depois repetido sucessivamente para cada um dos 8 sub-quadrados restantes (Fig.~\ref{fig:sierp1}).

\begin{figure}[h!]
  \centering
  \includegraphics[width=0.19\textwidth]{cp2223t_media/tapete1.png}
  \includegraphics[width=0.19\textwidth]{cp2223t_media/tapete2.png}
  \includegraphics[width=0.19\textwidth]{cp2223t_media/tapete3.png}
  \includegraphics[width=0.19\textwidth]{cp2223t_media/tapete4.png}
  \includegraphics[width=0.19\textwidth]{cp2223t_media/tapete5.png}
  \caption{Construção do tapete de Sierpinski com profundidade 5.}
  \label{fig:sierp1}
\end{figure}

\noindent
|NB|: No exemplo da fig.~\ref{fig:sierp1}, assumindo a construção clássica já referida, os quadrados estão a branco e o fundo a verde.

A complexidade deste algoritmo, em função do número de quadrados a desenhar, para uma profundidade $n$, é de $8^n$ (exponencial). No entanto, se assumirmos que os quadrados a desenhar são os que estão a verde, a complexidade é reduzida para $\sum_{i=0}^{n-1}8^i$, obtendo um ganho de $\sum_{i=1}^{n} \frac{100}{8^i} \%$. Por exemplo, para $n=5$, o ganho é de $14.28 \%$. O objetivo deste problema é a implementação do algoritmo mediante a referida otimização.
\begin{figure}[h!]
  \centering
  \includegraphics[width=0.35\textwidth]{cp2223t_media/tapete_ex}
  \caption{Tapete de Sierpinski com profundidade 2 e com os quadrados enumerados.}
  \label{fig:sierp2}
\end{figure}

Assim, seja cada quadrado descrito geometricamente pelas coordenadas do seu vértice inferior esquerdo e o comprimento do seu lado:
\begin{code}
type Square = (Point, Side)
type Side = Double
type Point = (Double, Double)
\end{code}
A estrutura recursiva de suporte à construção de tapetes de Sierpinski será uma \Rose, na qual cada nível da árvore irá guardar os quadrados de tamanho igual. Por exemplo, a construção da fig.~\ref{fig:sierp2} poderá\footnote{A ordem dos filhos não é relevante.} corresponder à árvore da figura \ref{fig:roseTreeSierp}.
\begin{figure}[ht!]
\centering
\begin{tikzpicture}
[level distance = 2cm,
level 1/.style = {sibling distance = 1.5cm},
level 2/.style = {sibling distance = 0.9cm},
]\node [draw, circle]{1}
child {node [draw, circle]{2}
child {node [draw, circle]{10}}
child {node [draw, circle]{11}}
child {node [draw, circle]{12}}
child {node [draw, circle]{13}}
child {node [draw, circle]{14}}
child {node [draw, circle]{15}}
child {node [draw, circle]{16}}
child {node [draw, circle]{17}}}
child {node [draw, circle]{3}}
child {node [draw, circle]{4}}
child {node [draw, circle]{5}}
child {node [draw, circle]{6}}
child {node [draw, circle]{7}}
child {node [draw, circle]{8}}
child {node [draw, circle]{9}};
\end{tikzpicture}
\caption{Possível árvore de suporte para a construção da fig.~\ref{fig:sierp2}.}
\label{fig:roseTreeSierp}
\end{figure}

Uma vez que o tapete é também um quadrado, o objetivo será, a partir das informações do tapete (coordenadas do vértice inferior esquerdo e comprimento do lado), desenhar o quadrado central, subdividir o tapete nos 8 sub-tapetes restantes, e voltar a desenhar, recursivamente, o quadrado nesses 8 sub-tapetes. Desta forma, cada tapete determina o seu quadrado e os seus 8 sub-tapetes. No exemplo em cima, o tapete que contém o quadrado 1 determina esse próprio quadrado e determina os sub-tapetes que contêm os quadrados 2 a 9.

Portanto, numa primeira fase, dadas as informações do tapete, é construida a árvore de suporte com todos os quadrados a desenhar, para uma determinada profundidade.
\begin{code}
squares :: (Square, Int) -> Rose Square
\end{code}
|NB|: No programa, a profundidade começa em $0$ e não em $1$.

Uma vez gerada a árvore com todos os quadrados a desenhar, é necessário extrair os quadrados para uma lista, a qual é processada pela função |drawSq|, disponibilizada no anexo \ref{sec:codigo}.
\begin{code}
rose2List :: Rose a -> [a]
\end{code}
Assim, a construção de tapetes de Sierpinski é dada por um hilomorfismo de \textit{Rose Trees}:
\begin{code}
sierpinski :: (Square, Int) -> [Square]
sierpinski = hyloRose gr2l  gsq
\end{code}
\textbf{Trabalho a fazer:}
\begin{enumerate}
    \item Definir os genes do hilomorfismo |sierpinski|.
    \item Correr
\begin{code}
sierp4 = drawSq (sierpinski (((0,0),32),3))

constructSierp5 = do drawSq (sierpinski (((0,0),32),0))
                     await
                     drawSq (sierpinski (((0,0),32),1))
                     await
                     drawSq (sierpinski (((0,0),32),2))
                     await
                     drawSq (sierpinski (((0,0),32),3))
                     await
                     drawSq (sierpinski (((0,0),32),4))
                     await
\end{code}
     \item Definir a função que apresenta a construção do tapete de Sierpinski como é apresentada em |construcaoSierp5|, mas para uma profundidade $n \in \mathbb{N}$ recebida como parâmetro.
\begin{code}
constructSierp :: Int -> IO [()]
constructSierp = present . carpets
\end{code}
\textbf{Dica}: a função |constructSierp| será um hilomorfismo de listas, cujo anamorfismo |carpets :: Int -> [[Square]]| constrói, recebendo como parâmetro a profundidade $n$, a lista com todos os tapetes de profundidade $1..n$, e o catamorfismo |present :: [[Square]] -> IO [()]| percorre a lista desenhando os tapetes e esperando 1 segundo de intervalo.
\end{enumerate}

\Problema

Este ano ocorrerá a vigésima segunda edição do Campeonato do Mundo de Futebol, organizado pela Federação Internacional de Futebol (FIFA), a decorrer no Qatar e com o jogo inaugural a 20 de Novembro.

Uma casa de apostas pretende calcular, com base numa aproximação dos \textit{rankings}\footnote{Os \textit{rankings} obtidos \href{https://www.fifa.com/fifa-world-ranking/men?dateId=id13687}{aqui} foram escalados e arredondados.} das seleções, a probabilidade de cada seleção vencer a competição.

Para isso, o diretor da casa de apostas contratou o Departamento de Informática da Universidade do Minho, que atribuiu o projeto à equipa formada pelos alunos e pelos docentes de Cálculo de Programas.

\begin{alert}
Para resolver este problema de forma simples, ele será abordado por duas fases:
\begin{enumerate}
\item versão académica sem probabilidades, em que se sabe à partida, num jogo, quem o vai vencer;
\item versão realista com probabilidades usando o mónade \textit{Dist} (distribuições probabilísticas) que vem descrito no anexo \ref{sec:probabilities}.
\end{enumerate}
A primeira versão, mais simples, deverá ajudar a construir a segunda.
\end{alert}

\subsection*{Descrição do problema}

Uma vez garantida a qualificação (já ocorrida), o campeonato consta de duas fases consecutivas no tempo:
\begin{enumerate}
\item fase de grupos;
\item fase eliminatória (ou ``mata-mata'', como é habitual dizer-se no Brasil).
\end{enumerate}

Para a fase de grupos, é feito um sorteio das 32 seleções (o qual já ocorreu para esta competição)
que as coloca em 8 grupos, 4 seleções em cada grupo.
Assim, cada grupo é uma lista de seleções.

Os grupos para o campeonato deste ano são:
\begin{code}
type Team = String
type Group = [Team]

groups :: [Group]
groups = [["Qatar", "Ecuador", "Senegal", "Netherlands"],
          ["England", "Iran", "USA", "Wales"],
          ["Argentina", "Saudi Arabia", "Mexico", "Poland"],
          ["France", "Denmark", "Tunisia", "Australia"],
          ["Spain", "Germany", "Japan", "Costa Rica"],
          ["Belgium", "Canada", "Morocco", "Croatia"],
          ["Brazil", "Serbia", "Switzerland", "Cameroon"],
          ["Portugal", "Ghana", "Uruguay", "Korea Republic"]]
\end{code}
Deste modo, \textit{groups !! 0} corresponde ao grupo A, \textit{groups !! 1} ao grupo B, e assim sucessivamente.
Nesta fase, cada seleção de cada grupo vai defrontar (uma vez) as outras do seu grupo. 

Passam para o ``mata-mata'' as duas seleções que mais pontuarem em cada grupo, obtendo pontos, por cada jogo da fase grupos, da seguinte forma:
\begin{itemize}
\item vitória --- 3 pontos;
\item empate --- 1 ponto;
\item derrota --- 0 pontos.
\end{itemize}
Como se disse, a posição final no grupo irá determinar se uma seleção avança para o ``mata-mata'' e, se avançar, que possíveis jogos terá pela frente, uma vez que a disposição das seleções está desde o início definida para esta última fase, conforme se pode ver na figura \ref{fig:wcup22}.
\begin{figure}[ht]
    \centering
    \includegraphics[scale=0.125]{cp2223t_media/wcup2022.png}
    \caption{O ``mata-mata''}
    \label{fig:wcup22}
\end{figure}

Assim, é necessário calcular os vencedores dos grupos sob uma distribuição probabilística.
Uma vez calculadas as distribuições dos vencedores, é necessário colocá-las nas folhas de uma |LTree| de forma a fazer um \textit{match} com a figura \ref{fig:wcup22}, entrando assim na fase final da competição, o tão esperado ``mata-mata''.
Para avançar nesta fase final da competição (i.e.\ subir na árvore), é preciso ganhar, quem perder é automaticamente eliminado (``mata-mata''). Quando uma seleção vence um jogo, sobe na árvore, quando perde, fica pelo caminho. Isto significa que a seleção vencedora é aquela que vence todos os jogos do ``mata-mata''.

\subsection*{Arquitetura proposta}

A visão composicional da equipa permitiu-lhe perceber desde logo que o problema podia ser dividido, independentemente da versão, probabilística ou não, em duas partes independentes --- a da fase de grupos e a do ``mata-mata''. Assim, duas sub-equipas poderiam trabalhar em paralelo, desde que se garantisse a composicionalidade das partes.
Decidiu-se que os alunos desenvolveriam a parte da fase de grupos e os docentes a do ``mata-mata''.

\subsubsection*{Versão não probabilística}
O resultado final (não probabilístico) é dado pela seguinte função:
\begin{code}
winner :: Team
winner = wcup groups

wcup = knockoutStage . groupStage 
\end{code}
A sub-equipa dos docentes já entregou a sua parte:
\begin{code}
knockoutStage = cataLTree (either id koCriteria)
\end{code}

Considere-se agora a proposta do \textit{team leader} da sub-equipa dos alunos para o desenvolvimento da fase de grupos:

\begin{bquote}
{\slshape

Vamos dividir o processo em 3 partes:
\begin{itemize}
\item gerar os jogos,
\item simular os jogos,
\item preparar o ``mata-mata'' gerando a árvore de jogos dessa fase (fig. \ref{fig:wcup22}).
\end{itemize}
Assim:
\begin{code}
groupStage :: [Group] -> LTree Team
groupStage = initKnockoutStage . simulateGroupStage . genGroupStageMatches
\end{code}

Comecemos então por definir a função |genGroupStageMatches| que gera os jogos da fase de grupos:
\begin{code}
genGroupStageMatches :: [Group] -> [[Match]]
genGroupStageMatches = map generateMatches
\end{code}
onde
\begin{code}
type Match = (Team, Team)
\end{code}
Ora, sabemos que nos foi dada a função
\begin{code}
gsCriteria :: Match -> Maybe Team
\end{code}
que, mediante um certo critério, calcula o resultado de um jogo, retornando |Nothing| em caso de empate, ou a equipa vencedora (sob o construtor |Just|). Assim, precisamos de definir a função
\begin{code}
simulateGroupStage :: [[Match]] -> [[Team]]
simulateGroupStage = map (groupWinners gsCriteria)
\end{code}
que simula a fase de grupos e dá como resultado a lista dos vencedores,
recorrendo à função |groupWinners|:
\begin{code}
groupWinners criteria = best 2 . consolidate . (>>= matchResult criteria)
\end{code}
Aqui está apenas em falta a definição da função |matchResult|.

Por fim, teremos a função |initKnockoutStage| que produzirá a |LTree| que a sub-equipa do ``mata-mata'' precisa, com as devidas posições. Esta será a composição de duas funções:
\begin{code}
initKnockoutStage = anaLTree glt . arrangement
\end{code}
}
\end{bquote}
Trabalho a fazer:
\begin{enumerate}
\item	Definir uma alternativa à função genérica |consolidate| que seja um
catamorfismo de listas:
\begin{code}
consolidate' :: (Eq a, Num b) => [(a, b)] -> [(a, b)]
consolidate' = cataList cgene
\end{code}
\item	Definir a função |matchResult :: (Match -> Maybe Team) -> Match ->
	[(Team, Int)]| que apura os pontos das equipas de um dado jogo.
\item Definir a função genérica |pairup :: Eq b => [b] -> [(b, b)]| em que
	|generateMatches| se baseia.
\item Definir o gene |glt|.
\end{enumerate}

\subsubsection*{Versão probabilística}

Nesta versão, mais realista, |gsCriteria :: Match -> (Maybe Team)| dá lugar a
\begin{code}
pgsCriteria :: Match -> Dist (Maybe Team)
\end{code}
que dá, para cada jogo, a probabilidade de cada equipa vencer ou haver um empate.
Por exemplo, há |50%| de probabilidades de Portugal empatar com a Inglaterra,
\begin{quote}
\begin{verbatim}
pgsCriteria("Portugal","England")
        Nothing  50.0%
 Just "England"  26.7%
Just "Portugal"  23.3%
\end{verbatim}
\end{quote}
etc.

O que é |Dist|? É o mónade que trata de distribuições probabilísticas e que é descrito no
anexo \ref{sec:probabilities}, página \pageref{sec:probabilities} e seguintes. O que há a fazer? Eis o que diz o vosso \emph{team leader}:

\begin{bquote}
\slshape
O que há a fazer nesta versão é, antes de mais, avaliar qual é o impacto
de |gsCriteria| virar monádica (em |Dist|) na arquitetura geral da versão
anterior. Há que reduzir esse impacto ao mínimo, escrevendo-se tão pouco código
quanto possível!
\end{bquote}

Todos relembraram algo que tinham aprendido nas aulas teóricas a respeito
da ``monadificação'' do código: há que reutilizar o código da versão anterior,
monadificando-o.

Para distinguir as duas versões decidiu-se afixar o prefixo `p'  para identificar
uma função que passou a ser monádica.

A sub-equipa dos docentes fez entretanto a monadificação da sua parte:
\begin{spec}
pwinner :: Dist Team
pwinner = pwcup groups

pwcup = pknockoutStage .! pgroupStage 
\end{spec}
E entregou ainda a versão probabilística do ``mata-mata'':
\begin{code}
pknockoutStage = mcataLTree' (either return pkoCriteria)

mcataLTree' g = k where
        k (Leaf a) = g1 a
        k (Fork(x,y)) = mmbin g2 (k x, k y)
        g1 = g . i1
        g2 = g . i2
\end{code}
A sub-equipa dos alunos também já adiantou trabalho,
\begin{code}
pgroupStage = pinitKnockoutStage .! psimulateGroupStage . genGroupStageMatches
\end{code}
mas faltam ainda |pinitKnockoutStage| e |pgroupWinners|, esta usada em |psimulateGroupStage|,
que é dada em anexo. 

Trabalho a fazer:
\begin{itemize}
\item	Definir as funções que ainda não estão implementadas nesta versão.
\item	\textbf{Valorização}: experimentar com outros critérios de ``ranking'' das equipas.
\end{itemize}

\begin{alert}
\textbf{Importante}: (a) código adicional terá que ser colocado no anexo
\ref{sec:resolucao}, obrigatoriamente; (b) todo o código que é dado não pode
ser alterado.
\end{alert}

\part*{Anexos}

\appendix

\section{Documentação para realizar o trabalho}
\label{sec:documentacao}
Para cumprir de forma integrada os objectivos do trabalho vamos recorrer
a uma técnica de programa\-ção dita
``\litp{literária}'' \cite{Kn92}, cujo princípio base é o seguinte:
%
\begin{quote}\em Um programa e a sua documentação devem coincidir.
\end{quote}
%
Por outras palavras, o código fonte e a documentação de um
programa deverão estar no mesmo ficheiro.

O ficheiro \texttt{cp2223t.pdf} que está a ler é já um exemplo de
\litp{programação literária}: foi gerado a partir do texto fonte
\texttt{cp2223t.lhs}\footnote{O sufixo `lhs' quer dizer
\emph{\lhaskell{literate Haskell}}.} que encontrará no
\MaterialPedagogico\ desta disciplina descompactando o ficheiro
\texttt{cp2223t.zip} e executando:
\begin{Verbatim}[fontsize=\small]
    $ lhs2TeX cp2223t.lhs > cp2223t.tex
    $ pdflatex cp2223t
\end{Verbatim}
em que \href{https://hackage.haskell.org/package/lhs2tex}{\texttt\LhsToTeX} é
um pré-processador que faz ``pretty printing''
de código Haskell em \Latex\ e que deve desde já instalar utilizando o
utiliário \href{https://www.haskell.org/cabal/}{cabal} disponível em \href{https://www.haskell.org}{haskell.org}.

Por outro lado, o mesmo ficheiro \texttt{cp2223t.lhs} é executável e contém
o ``kit'' básico, escrito em \Haskell, para realizar o trabalho. Basta executar
\begin{Verbatim}[fontsize=\small]
    $ ghci cp2223t.lhs
\end{Verbatim}

\noindent Abra o ficheiro \texttt{cp2223t.lhs} no seu editor de texto preferido
e verifique que assim é: todo o texto que se encontra dentro do ambiente
\begin{quote}\small\tt
\verb!\begin{code}!
\\ ... \\
\verb!\end{code}!
\end{quote}
é seleccionado pelo \GHCi\ para ser executado.

\subsection{Como realizar o trabalho}
Este trabalho teórico-prático deve ser realizado por grupos de 3 (ou 4) alunos.
Os detalhes da avaliação (datas para submissão do relatório e sua defesa
oral) são os que forem publicados na \cp{página da disciplina} na \emph{internet}.

Recomenda-se uma abordagem participativa dos membros do grupo
em todos os exercícios do trabalho, para assim
poderem responder a qualquer questão colocada na
\emph{defesa oral} do relatório.

Em que consiste, então, o \emph{relatório} a que se refere o parágrafo anterior?
É a edição do texto que está a ser lido, preenchendo o anexo \ref{sec:resolucao}
com as respostas. O relatório deverá conter ainda a identificação dos membros
do grupo de trabalho, no local respectivo da folha de rosto.

Para gerar o PDF integral do relatório deve-se ainda correr os comando seguintes,
que actualizam a bibliografia (com \Bibtex) e o índice remissivo (com \Makeindex),
\begin{Verbatim}[fontsize=\small]
    $ bibtex cp2223t.aux
    $ makeindex cp2223t.idx
\end{Verbatim}
e recompilar o texto como acima se indicou.

No anexo \ref{sec:codigo}, disponibiliza-se algum
código \Haskell\ relativo aos problemas apresentados. Esse anexo deverá
ser consultado e analisado à medida que isso for necessário.

\subsection{Como exprimir cálculos e diagramas em LaTeX/lhs2tex}
Como primeiro exemplo, estudar o texto fonte deste trabalho para obter o
efeito:\footnote{Exemplos tirados de \cite{Ol18}.}
\begin{eqnarray*}
\start
     |id = split f g|
%
\just\equiv{ universal property }
%
        |lcbr(
          p1 . id = f
     )(
          p2 . id = g
     )|
%
\just\equiv{ identity }
%
        |lcbr(
          p1 = f
     )(
          p2 = g
     )|
\qed
\end{eqnarray*}

Os diagramas podem ser produzidos recorrendo à \emph{package} \LaTeX\
\href{https://ctan.org/pkg/xymatrix}{xymatrix}, por exemplo:
\begin{eqnarray*}
\xymatrix@@C=2cm{
    |Nat0|
           \ar[d]_-{|cataNat g|}
&
    |1 + Nat0|
           \ar[d]^{|id + (cataNat g)|}
           \ar[l]_-{|inNat|}
\\
     |B|
&
     |1 + B|
           \ar[l]^-{|g|}
}
\end{eqnarray*}

\section{Regra prática para a recursividade mútua em |Nat0|}\label{sec:mr}

Nesta disciplina estudou-se como fazer \pd{programação dinâmica} por cálculo,
recorrendo à lei de recursividade mútua.\footnote{Lei (\ref{eq:fokkinga})
em \cite{Ol18}, página \pageref{eq:fokkinga}.}

Para o caso de funções sobre os números naturais (|Nat0|, com functor
|fF X = 1 + X|) é fácil derivar-se da lei que foi estudada uma
  \emph{regra de algibeira}
  \label{pg:regra}
que se pode ensinar a programadores que não tenham estudado
\cp{Cálculo de Programas}. Apresenta-se de seguida essa regra, tomando como
exemplo o cálculo do ciclo-\textsf{for} que implementa a função de Fibonacci,
recordar o sistema:
\begin{spec}
fib 0 = 1
fib(n+1) = f n

f 0 = 1
f (n+1) = fib n + f n
\end{spec}
Obter-se-á de imediato
\begin{code}
fib' = p1 . for loop init where
   loop(fib,f)=(f,fib+f)
   init = (1,1)
\end{code}
usando as regras seguintes:
\begin{itemize}
\item O corpo do ciclo |loop| terá tantos argumentos quanto o número de funções
mutuamente recursivas.
\item Para as variáveis escolhem-se os próprios nomes das funções, pela ordem
que se achar conveniente.\footnote{Podem obviamente usar-se outros símbolos,
mas numa primeira leitura dá jeito usarem-se tais nomes.}
\item Para os resultados vão-se buscar as expressões respectivas, retirando
a variável |n|.
\item Em |init| coleccionam-se os resultados dos casos de base das funções,
pela mesma ordem.
\end{itemize}
Mais um exemplo, envolvendo polinómios do segundo grau $ax^2 + b x + c$ em |Nat0|.
Seguindo o método estudado nas aulas\footnote{Secção 3.17 de \cite{Ol18} e tópico
\href{https://www4.di.uminho.pt/~jno/media/cp/}{Recursividade mútua}
nos vídeos de apoio às aulas teóricas.},
de $f\ x = a x^2 + b x + c$ derivam-se duas funções mutuamente recursivas:
\begin{spec}
f 0 = c
f (n+1) = f n + k n

k 0 = a + b
k(n+1) = k n + 2 a
\end{spec}
Seguindo a regra acima, calcula-se de imediato a seguinte implementação, em Haskell:
\begin{code}
f' a b c = p1 . for loop init where
  loop(f,k) = (f+k,k+2*a)
  init = (c,a+b) 
\end{code}

\section{O mónade das distribuições probabilísticas} \label{sec:probabilities}
%format B = "\mathit B"
%format C = "\mathit C"
Mónades são functores com propriedades adicionais que nos permitem obter
efeitos especiais em progra\-mação. Por exemplo, a biblioteca \Probability\
oferece um mónade para abordar problemas de probabilidades. Nesta biblioteca,
o conceito de distribuição estatística é captado pelo tipo
\begin{eqnarray}
     |newtype Dist a = D {unD :: [(a, ProbRep)]}|
     \label{eq:Dist}
\end{eqnarray}
em que |ProbRep| é um real de |0| a |1|, equivalente a uma escala de $0$ a
$100 \%$.

Cada par |(a,p)| numa distribuição |d::Dist a| indica que a probabilidade
de |a| é |p|, devendo ser garantida a propriedade de  que todas as probabilidades
de |d| somam $100\%$.
Por exemplo, a seguinte distribuição de classificações por escalões de $A$ a $E$,
\[
\begin{array}{ll}
A & \rule{2mm}{3pt}\ 2\%\\
B & \rule{12mm}{3pt}\ 12\%\\
C & \rule{29mm}{3pt}\ 29\%\\
D & \rule{35mm}{3pt}\ 35\%\\
E & \rule{22mm}{3pt}\ 22\%\\
\end{array}
\]
será representada pela distribuição
\begin{code}
d1 :: Dist Char
d1 = D [('A',0.02),('B',0.12),('C',0.29),('D',0.35),('E',0.22)]
\end{code}
que o \GHCi\ mostrará assim:
\begin{Verbatim}[fontsize=\small]
'D'  35.0%
'C'  29.0%
'E'  22.0%
'B'  12.0%
'A'   2.0%
\end{Verbatim}
É possível definir geradores de distribuições, por exemplo distribuições \emph{uniformes},
\begin{code}
d2 = uniform (words "Uma frase de cinco palavras")
\end{code}
isto é
\begin{Verbatim}[fontsize=\small]
     "Uma"  20.0%
   "cinco"  20.0%
      "de"  20.0%
   "frase"  20.0%
"palavras"  20.0%
\end{Verbatim}
distribuição \emph{normais}, eg.\
\begin{code}
d3 = normal [10..20]
\end{code}
etc.\footnote{Para mais detalhes ver o código fonte de \Probability, que é uma adaptação da
biblioteca \PFP\ (``Probabilistic Functional Programming''). Para quem quiser saber mais
recomenda-se a leitura do artigo \cite{EK06}.}
|Dist| forma um \textbf{mónade} cuja unidade é |return a = D [(a,1)]| e cuja composição de Kleisli
é (simplificando a notação)
\begin{spec}
  ((kcomp f g)) a = [(y,q*p) | (x,p) <- g a, (y,q) <- f x]
\end{spec}
em que |g: A -> Dist B| e |f: B -> Dist C| são funções \textbf{monádicas} que representam
\emph{computações probabilísticas}.

Este mónade é adequado à resolução de problemas de \emph{probabilidades e estatística} usando programação funcional, de forma elegante e como caso particular da programação monádica.

\section{Código fornecido}\label{sec:codigo}

\subsection*{Problema 1}
Alguns testes para se validar a solução encontrada:
\begin{code}
test a b c = map (fbl a b c) x == map (f a b c) x where x = [1..20]  

test1 = test 1 2 3
test2 = test (-2) 1 5
\end{code}

\subsection*{Problema 2}

\textbf{Verificação}: a árvore de tipo \Exp\ gerada por
\begin{code}
acm_tree = tax acm_ccs
\end{code}
deverá verificar as propriedades seguintes:
\begin{itemize}
\item |expDepth acm_tree == 7| (profundidade da árvore);
\item |length (expOps acm_tree) == 432| (número de nós da árvore);
\item |length (expLeaves acm_tree) == 1682| (número de folhas da árvore).\footnote{Quer dizer, o número total de nodos e folhas é |2114|, o número de linhas do texto dado.}
\end{itemize}
O resultado final
\begin{code}
acm_xls  = post acm_tree
\end{code}
não deverá ter tamanho inferior ao total de nodos e folhas da árvore.

\subsection*{Problema 3}
Função para visualização em \svg:
\begin{code}
drawSq x = picd'' [ Svg.scale 0.44 (0,0) (x >>= sq2svg) ]
sq2svg (p,l) = (color "#67AB9F" . polyg) [ p, p .+ (0,l), p .+ (l,l), p .+ (l,0) ]
\end{code}
Para efeitos de temporização:
\begin{code}
await = threadDelay 1000000
\end{code}

\subsection*{Problema 4}
Rankings:
\begin{code}
rankings = [
         ("Argentina",4.8),
         ("Australia",4.0),
         ("Belgium",5.0),
         ("Brazil",5.0),
         ("Cameroon",4.0),
         ("Canada",4.0),
         ("Costa Rica",4.1),
         ("Croatia",4.4),
         ("Denmark",4.5),
         ("Ecuador",4.0),
         ("England",4.0),
         ("France",4.8),
         ("Germany",4.5),
         ("Ghana",3.8),
         ("Iran",4.2),
         ("Japan",4.2),
         ("Korea Republic",4.2),
         ("Mexico",4.5),
         ("Morocco",4.2),
         ("Netherlands",4.6),
         ("Poland",4.2),
         ("Portugal",4.6),
         ("Qatar",3.9),
         ("Saudi Arabia",3.9),
         ("Senegal",4.3),
         ("Serbia",4.2),
         ("Spain",4.7),
         ("Switzerland",4.4),
         ("Tunisia",4.1),
         ("USA",4.4),
         ("Uruguay",4.5),
         ("Wales",4.3)]
\end{code}
Geração dos jogos da fase de grupos:
\begin{code}
generateMatches = pairup
\end{code}
Preparação da árvore do ``mata-mata'':
\begin{code}
arrangement = (>>= swapTeams) . chunksOf 4 where
  swapTeams [[a1,a2],[b1,b2],[c1,c2],[d1,d2]] = [a1,b2,c1,d2,b1,a2,d1,c2]
\end{code}
Função proposta para se obter o \emph{ranking} de cada equipa:
\begin{code}
rank x = 4 ** (pap rankings x - 3.8)
\end{code}
Critério para a simulação não probabilística dos jogos da fase de grupos:
\begin{code}
gsCriteria = s . split (id >< id) (rank >< rank) where
  s ((s1, s2), (r1, r2)) = let d = r1 - r2 in
                           if d > 0.5 then Just s1
                                      else if d < -0.5 then Just s2
                                                       else Nothing
\end{code}
Critério para a simulação não probabilística dos jogos do mata-mata:
\begin{code}
koCriteria = s . split (id >< id) (rank >< rank) where
  s ((s1, s2), (r1, r2)) = let d = r1 - r2 in
                           if d == 0 then s1
                                     else if d > 0 then s1 else s2
\end{code}
Critério para a simulação probabilística dos jogos da fase de grupos:
\begin{code}
pgsCriteria = s . split (id >< id) (rank >< rank) where
  s ((s1, s2), (r1, r2)) =
     if abs(r1-r2) > 0.5 then fmap Just (pkoCriteria(s1,s2)) else f (s1,s2)
  f = D . ((Nothing,0.5):) . map (Just><(/2)) . unD . pkoCriteria
\end{code}
Critério para a simulação probabilística dos jogos do mata-mata:
\begin{code}
pkoCriteria (e1, e2) = D [(e1, 1 - r2 / (r1 + r2)), (e2, 1 - r1 / (r1 + r2))] where
    r1 = rank e1
    r2 = rank e2
\end{code}
Versão probabilística da simulação da fase de grupos:\footnote{Faz-se ``trimming'' das distribuições para reduzir o tempo de simulação.}
\begin{code}
psimulateGroupStage = trim .  map (pgroupWinners pgsCriteria)
trim = top 5 . sequence . map (filterP.norm)  where
   filterP (D x) = D [(a,p) | (a,p) <- x, p > 0.0001 ]
   top n = vec2Dist . take n . reverse . presort snd . unD 
   vec2Dist x = D [ (a,n/t) | (a,n) <- x ] where t = sum(map snd x) 
\end{code}
Versão mais eficiente da |pwinner| dada no texto principal, para diminuir o tempo de cada
simulação:
\begin{code}
pwinner :: Dist Team
pwinner = mbin f x >>= pknockoutStage where
   f(x,y) = initKnockoutStage(x++y)
   x = split (g . take 4) (g . drop 4) groups
   g = psimulateGroupStage . genGroupStageMatches
\end{code}
Auxiliares:
\begin{code}
best n = map fst . take n . reverse . presort p2

consolidate :: (Num d, Eq d, Eq b) => [(b, d)] -> [(b, d)]
consolidate = map (id><sum) . collect

collect :: (Eq a, Eq b) => [(a, b)] -> [(a, [b])]
collect x = nub [ k |-> [ d' | (k',d') <- x , k'==k ] | (k,d) <- x ]
\end{code}
Função binária monádica |f|:
\begin{code}
mmbin :: Monad m => ((a, b) -> m c) -> (m a, m b) -> m c
mmbin f (a,b) = do { x <- a ; y <- b ; f(x,y) }
\end{code}
Monadificação de uma função binária |f|:
\begin{code}
mbin :: Monad m => ((a, b) -> c) -> (m a, m b) -> m c
mbin = mmbin . (return.)
\end{code}
Outras funções que podem ser úteis:
\begin{code}
(f `is` v) x = (f x) == v

rcons(x,a) = x++[a]
\end{code}

%----------------- Soluções dos alunos -----------------------------------------%

\section{Soluções dos alunos}\label{sec:resolucao}
Os alunos devem colocar neste anexo as suas soluções para os exercícios
propostos, de acordo com o ``layout'' que se fornece. Não podem ser
alterados os nomes ou tipos das funções dadas, mas pode ser adicionado
texto, diagramas e/ou outras funções auxiliares que sejam necessárias.

Valoriza-se a escrita de \emph{pouco} código que corresponda a soluções
simples e elegantes.

\subsection*{Problema 1}

Após analisar o contexto do problema apresentado, concluímos que se trata de um problema onde iremos recorrer à lei da recursividade mútua.
É nos apresentado a seguinte função, derivada da sequência de Fibonacci usando um ciclo-for, tal que cada termo subsequente aos três primeiros corresponde à soma dos três anteriores:

\begin{spec}
  f a b c 0 = 0 
  f a b c 1 = 1
  f a b c 2 = 1
  f a b c (n+3) = a * f a b c (n+2) + b * f a b c (n+1) + c * f a b c n
\end{spec}

O problema pede então que seja aplicada a seguinte regra:

\begin{spec}
fib 0 = 1
fib (n+1) = f n

f 0 = 1
f(n+1) = fib n + f n
\end{spec}

Onde iremos obter o seguinte:

\begin{spec}
fib' = p1 . for loop init where
  loop(fib,f) = (f,fib+f)
  init = (1,1)
\end{spec}

Deste modo podemos concluir o seguinte:

\begin{itemize}
  \item O ciclo loop irá ter tantos argumentos quanto o número de funções mutuamente exclusivas. Neste caso serão 3 argumentos, pois temos 3 termos inciais.
  \item As funções serão respetivamente, g,h e f.
  \item Em init usam se os resultados dos casos base respetivamente, ((1,1),0).
\end{itemize}

% format n consigo por a represetnaçao do catamorfismo
% format tmb acho q os splits n se representam assim, mas nao sei como por tbh, tp no livro q mandaste tem outro formato
% tmb n sei colocar o underscore no 0
% aparecem uns erros estranhos, mesmo ao compilar
Como aplicamos a lei da recursiva mutua a este exercicio:

\begin{eqnarray*}
\start
          |split (split (g)(h)) (f) = cataNat (split (split (j)(k)) (i))|
%
\just\equiv{ universal-cata }
%
          |split (split (g)(h)) (f) . in = split (split (j)(k)) (i) . F (split (split (g)(h)) (f)) |
%
\just\equiv{ fusão-x 2x }
%
          |split (split (g.in)(h.in)) (f.in) = split (split (j.F (split (split (g)(h)) (f)))(k.F (split (split (g)(h)) (f)))) (i.F (split (split (g)(h)) (f)))|
%
\just\equiv{ Eq-x }
%
        |lcbr3
        (g . in = j . F (split (split (g)(h)) (f)))
        (h . in = k . F (split (split (g)(h)) (f)))
        (f . in = i . F (split (split (g)(h)) (f)))
        |
%
\just\equiv{ definição de in; functor do naturais }
%
        |lcbr3
        (g . (either (0) (succ)) = j . (id + split (split (g) (h)) (f)))
        (h . (either (0) (succ)) = k . (id + split (split (g) (h)) (f)))
        (f . (either (0) (succ)) = i . (id + split (split (g) (h)) (f)))
        |
%
\just\equiv{ fusão-+; reflexão-+; eq-+; igualdade extencional; def-comp; def-split; def-x }
%
      |lcbr3
      (lcbr
          (g 0 = 1)
          (g (n+1) = c1 ((g n, h n), f n)))
      (lcbr
          (h 0 = 1)
          (h (n+1) = c2 ((g n, h n), f n)))
      (lcbr
        (f 0 = 0)
        (f (n+1) = c3 ((g n, h n), f n)))
      |
\end{eqnarray*}

E é nos apresentado o que devemos resolver:

\begin{spec}
fbl a b c = wrap ·for (loop a b c) initial
\end{spec}

As funções f, h e g que levantamos foram as seguintes:

\begin{spec}
g 0 = 1
g (n+1) = c1 ((g n, h n), f n)

h 0 = 1
h (n+1) = g n
h (n+1) = c2 ((g n, h n), f n)

f 0 = 0
f (n+1) = h n
f (n+1) = c3 ((g n, h n), f n)
\end{spec}

Como h (n+1) = g (n), c2 = (p1.p1) e como f(n+1) = h(n), c3 = (p2.p1).

Destas nossas funções a f é a função principal, sendo que esta pode ser traduzida para a seguinte
forma:
\begin{spec}
f 0 = 0
f n = (p2.p1) ((f (n+1), f n), f (n-1))
\end{spec}

Ou seja, em cada instante temos o resultado da função relativamente à 
etapa anterior, à etapa atual e à etapa seguinte. É desta forma que evitamos
calcular novamente as mesmas coisas.

Casos base:
\begin{itemize}
  \item f(0) = 0
  \item f(1) = (p2.p1) ((g 0, h 0), f 0) = (p2.p1) ((1,1),0) = 1
  \item f(2) = (p2.p1) ((g 1, h 1), f 1) = (p2.p1) ((?,g 0), h 0) =  (p2.p1) ((?,1),1) = 1
\end{itemize}

Agora falta-nos apenas definir c1.

Partindo da definição da função, conseguimos reparar que ela utiliza o resultado das 3 etapas anteriores.
Ora bem nós de certa forma já temos isso, como demonstado no seguinte esquema:

\begin{eqnarray*}
\start
      g\ (n+1) = c1\ ((g\ n,\ h\ n),\ f\ n)
      \just\equiv{subsituindo n+1 por n+3}
      g\ (n+3) = c1\ ((g\ (n+2),\ h\ (n+2)),\ f\ (n+2)) 
      \just\equiv{subsituindo f e h por g}
      g\ (n+3) = c1\ ((g\ (n+2),\ g\ (n+1)),\ g\ (n))
%
\end{eqnarray*}

Ou seja c1, acaba por ser uma simples função visto que nós já temos esses tais resultados.
Para isso basta aplicar as operações aritméticas aos resultados já obtidos.

Partindo do princípio que queremos manter os resultados de (g (n+2), g (n+1)), 
para ambos os elementos aplicamos umas funções de translação dentro do par ((\_,\_),\_)
para a direita. Essas funções de translação são c2 e c3 respetivamente.
O resultado de g(n) é apenas utilizado para o calculo de g (n+3) e posteriormente é deitado "fora".

Como a, b e c são parâmetros da função, a definição de c1 é:
\begin{spec}
add . (add >< id) . (((a*) >< (b*)) >< (c*))
\end{spec}

Sendo assim o nosso sistema de equações ficou:
\begin{eqnarray*}
\start
      |lcbr3
      (lcbr
      (g 0 = 1)
      (g (n+1) = (add . (add >< id) . (((a*) >< (b*)) >< (c*))) ((g n, h n), f n))
      )
      (lcbr
      (h 0 = 1)
      (h (n+1) = (p1.p1) ((g n, h n), f n))
      )
      (lcbr
      (f 0 = 1)
      (f (n+1) = (p2.p1) ((g n, h n), f n))
      )|
%
\end{eqnarray*}

Primeiramente vamos multiplicar a, b e c pelo respetivo resultado, e depois posteriormente
só são aplicadas adições dos resultados das tais multilicações.

Com isto, concluimos que a variável "initial", que vai ser definida por ((1,1),0), 
porque são os valores dos resultados iniciais dos coeficientes da sequência númerica, 
definidos no enunciado, que correspondem às funções também definidas inicialmente ((g,h),f).

\begin{code}
initial = ((1,1),0)
\end{code}

De seguida definimos a função "wrap", que tem como funcionalidade ir buscar o segundo par de \textbf{for (loop a b c) initial}:

\begin{code}
wrap = p2
\end{code}

Por fim deduzimos a função "loop" simplesmente juntando c1, c2 e c3 numa única operação:

\begin{code}
loop a b c = split (split (add . (add >< id) . (((a*) >< (b*)) >< (c*))) (p1.p1)) (p2.p1)
\end{code}   

\begin{spec}
      f a b c = split (split (add . (add >< id) . (((a*) >< (b*)) >< (c*))) (p1.p1)) (p2.p1)
\end{spec} 

Definição do loop, point-free (chegamos à conclusão que é igual a f):
\begin{spec}
loop a b c = split (split (add . (add >< id) . (((a*) >< (b*)) >< (c*))) (p1.p1)) (p2.p1)
\end{spec}

\textbf{Valorização}

\begin{code}
testa a b c = map (fbl a b c) x where x = [1..20]
testb a b c = map (f a b c) x where x = [1..20]  

test11a = testa 1 2 3
test11b = testb 1 2 3
test22a = testa (-2) 1 5
test22b = testb (-2) 1 5
\end{code}

\begin{spec}
*Main> :set +s

*Main> test11a
[1,1,3,8,17,42,100,235,561,1331,3158,7503,17812,42292,100425,238445,566171,1344336,3192013,7579198]
(0.07 secs, 472,216 bytes)
*Main> test11b
[1,1,3,8,17,42,100,235,561,1331,3158,7503,17812,42292,100425,238445,566171,1344336,3192013,7579198]
(0.29 secs, 152,214,104 bytes)

*Main> test22a
[1,1,-1,8,-12,27,-26,19,71,-253,672,-1242,1891,-1664,-991,9773,-28857,62532,-105056,128359]
(0.07 secs, 466,936 bytes)
*Main> test22b
[1,1,-1,8,-12,27,-26,19,71,-253,672,-1242,1891,-1664,-991,9773,-28857,62532,-105056,128359]
(0.28 secs, 152,580,536 bytes)
\end{spec}
Assim é possível verificar que a função \textbf{fbl} é 4 vezes mais eficiente que a \textbf{f}, em termos de tempo e (+-)300 vezes mais eficiente em termos de memória usada.

\subsection*{Problema 2}
Gene de |tax|:

A função out pode-se retirar do diagrama apresentado no enunciado. Basicamente se a lista tiver apenas um elemento, injetamo-lo à esquerda. Se a lista tiver uma cabeça e uma cauda, injetamos à direita o par (cabeça,[cauda]).
\begin{code}
outP2 :: [a] -> Either a (a,[a])
outP2 [x] = i1 x
outP2 (h:t) = i2 (h,t)
\end{code}

A função contaEspaços é apenas uma função auxiliar que conta o numero de espaços iniciais de uma String, que será aplicada à função que trata as diretorias e subdiretorias.
\begin{code}
contaEspacos :: String -> Integer
contaEspacos "" = 0
contaEspacos (' ':t) = 1 + contaEspacos t
contaEspacos _ = 0
\end{code}

Função auxiliar que apenas adiciona um elemento ao final de uma determinada matriz.
\begin{code}
addLast :: (String, Integer) -> [[(String,Integer)]] -> [[(String,Integer)]]
addLast t l = (take (length l - 1) l) ++ [last(l) ++ [t]]
\end{code}


A função a seguir recebe uma matriz de tuplos, que correspondem às diretorias e os respetivos número de espaços e um tuplo a ser inserido nessa mesma matriz. Ou seja a função vai determinar onde é inserido esse tuplo na matriz. Caso o número de espaços da cabeça do última lista da matriz for menor que o numero de espaços do elemento a inserir, então quer dizer que o tuplo (s,n) é subdiretoria desse elemento e adicionamos ao fim da lista com a função addLast acima descrita.
\begin{code}
funAux :: [[(String,Integer)]]-> (String, Integer)  -> [[(String,Integer)]]
funAux [] x = [[x]]
funAux l (s,n) | p2(head(last(l))) < n = addLast (s,n) l
               | otherwise = l ++ [[(s,n)]]
\end{code}

A seguir está um exemplo para melhor compreensão

Se passarmos a matriz como argumento
\begin{spec}
[
  [
    ("General and References", 0),("    Document Types", 4), 
    ("        Surveys and overviews", 8),  ("        Reference works",8)
  ]
]
\end{spec}

e o par 
\begin{spec}
("        General conference proceedings", 8) 
\end{spec}

o resultado final será:
\begin{spec}
[
  [
    ("General and References", 0),("    Document Types", 4), 
    ("        Surveys and overviews", 8),  ("        Reference works",8), 
    ("        General conference proceedings", 8)
  ]
]
\end{spec}

Outro exemplo: 

A matriz fornecida é:
\begin{spec}
[
  [
    ("Document Types", 0), ("    Surveys and overviews", 4),  
    ("    Reference works",4), ("    General conference proceedings", 4)
  ]
]
\end{spec}

e o par é:
\begin{spec}
("Cross-computing tools and techniques", 0) 
\end{spec}

Resultado:
\begin{spec}
[
  [
    ("Document Types", 0), ("    Surveys and overviews", 4),  
    ("    Reference works",4), (    "General conference proceedings", 4)
  ],
  [
    ("Cross-computing tools and techniques", 0)
  ]
]
\end{spec}

Os resultados dos seguintes testes estão corretos.
\begin{code}
teste21 = expDepth acm_tree == 7
teste22 = length (expOps acm_tree) == 432
teste23 = length (expLeaves acm_tree) == 1682
\end{code}

A função fun pega numa lista de strings e passa para uma matriz de Strings de acordo com as subdiretorias, isto é, cada lista de strings corresponde a uma diretoria. Uma diretoria é definida de acordo com o número de espaços e para isso primeiro contamos o número de espaços de 4 em 4 para criar as respetivas listas de strings. No fim apagamos os espaços que delimitavam as subdiretorias com a função drop. 
\begin{code}
fun :: [String] -> [[String]]
fun = map (map (\(s,n) -> drop 4 s)) . foldl funAux [] . map (\s -> (s,contaEspacos s))
\end{code}

O gene é facilmente retirado do diagrama apresentado no enunciado.

\begin{eqnarray*}
\xymatrix{
S^* \ar[r]^{out} \ar[rd]^{gene} & S + S \times S^*\ar[d]^{id + (id \times fun)}\\
&S + S \times (S^*)^*}
\end{eqnarray*}

\begin{code}
gene = (id -|- (id >< fun)) . outP2
\end{code}

Função de pós-processamento:
\begin{code}

auxPost :: (String,[[[String]]]) -> [[String]]
auxPost (s,lis) = [s]:(((map(\l -> s:l)) . concat) lis)
\end{code}

A função post gera a matriz a partir da ExpTree gerada pela funçao tax

\begin{code}
post = cataExp (either (singl . singl) auxPost)
\end{code}

\begin{eqnarray*}
\xymatrix{
  (S^*)^* & & S + S \times (S^*)^*\ar[ll]_{gene}\\
  Exp S S \ar[u]^{post}\ar[rr]_{outExp} & & S + S \times (S^*) \ar[u]_{id + id \times post}
}
\end{eqnarray*}

\subsection*{Problema 3}

Para resolver o problema 3, temos de tal como mencionado no enunciado, definir os genes do hilomofismo \textit{sierpinski}, ou seja definir \textit{gr2l} e 
\textit{gsq} e correr a funcão \textit{sierp4} depois, temos de definar as funções \textit{present} e \textit{carpets} de modo a podermos desenhar tapetes de Sierpinksi 
de profundidade n.
Assim, de modo a alcançar a solução pretendida, codificamos as seguintes funções:

Primeiro começamos por definir a função \textit{squares} como um anamorfismo de RoseTrees com gene \textit{gsq}, esta função cria a árvore de suporte com todos os quadrados 
a desenhar, para uma dada profundidade.

\begin{code}

squares = anaRose gsq

\end{code}

De modo a termos a lista dos nove quadrados gerados a partir de um quadrado inicial quando se faz uma iteração no tapete de Sierpinksi, tal como se pode ver nas figuras \ref{fig:sierp1} 
e \ref{fig:sierp2}, em que um desses quadrados coincide com o quadrado a gerar no meio e os outros oito quadrados são colocados em torno do quadrado central, definimos a função \textit{geraquadrados}. 
Esta função é bastante simples, pois apenas cria uma lista de quadrados, em que os quadrados gerados 
têm coordenadas diferentes do que o quadrado original, adicionando ou removendo um terço do \textit{Side} do \textit{Square}, passado como parâmetro. E alterando o valor do comprimento 
do lado do quadrado para um terço do valor original.

\begin{code}
geraquadrados :: Square -> [Square]
geraquadrados ((x,y),c) = [
                           ((x+a,y+a),a),
                           ((x,y+2*a),a), 
                           ((x+a,y+2*a),a),
                           ((x+2*a,y+2*a),a),
                           ((x,y+a),a),
                           ((x+2*a,y+a),a),
                           ((x,y),a),
                           ((x+a,y),a),
                           ((x+2*a,y),a)]
                where
                  a = c/3
\end{code}

O gene \textit{gsq}, tem como função gerar os quadrados a desenhar a partir de um quadrado original e uma dada profundidade.

Na forma como o definimos, utilizamos funções auxiliares, e para as explicarmos temos de observar o tipo dos argumentos com que trabalhamos. A primeira função que 
definimos foi, \textit{paux}, esta função pega na segunda componente do tuplo passado como argumento (\textit{Square},\textit{Int}), ou seja, no inteiro que representa 
o valor da profundidade e reduz esse valor uma unidade.

A função auxiliar \textit{l}, também é bastante simples, simplesmente aplica a função \textit{geraquadrados} para o quadrado passado no tuplo (\textit{Square},\textit{Int}). 
Ou seja, \textit{l} é a lista de nove quadrados gerados a partir do quadrado do argumento numa profundidade.

Assim, de modo a apresentar o tipo desejado no resultado, \textit{(Square,[(Square,Int)])}, basta-nos pegar no primeiro quadrado gerado pela função \textit{geraquadrados} 
que corresponde ao quadrado central, obtido através de \textit{qc} e aplicar a \textit{geraquadrados} para cada um dos quadrados gerados, decremento sempre a profundidade via \textit{paux} e juntar num tuplo, 
ficando então com o resultado (quadrado inicial, lista de quadrados gerados a cada profundidade).

O aplicar da função que gera os quadrados a todos os quadrados gerados é garantido graças ao \textit{map} que definimos, enquanto que a aplicação recursiva consoante o valor de \textit{paux} é garantida por \textit{qv}.

\begin{code}
gsq :: (Square,Int) -> (Square,[(Square,Int)])
gsq t = (qc,map (\s -> (s,paux)) qv)
      where
          paux = (p2 t) - 1
          l = geraquadrados (p1 t)
          qc = head l
          qv | paux /= -1 = tail l
             | otherwise = []
\end{code}
O esquema do anamorfismo \textit{squares} é o seguinte:
\begin{eqnarray}
\xymatrix@@C=1.3cm{
|RoseTree|\ |Square|\ar@@/^1pc/[rr]^{|out|} & \cong & |Square><RoseTree|\ |Square|^* \ar@@/^1pc/[ll]^{|in|}\\
|Square >< Int|\ar[u]^{squares} \ar[rr]_{gsq} & & |Square >< (Square >< Int)|^*\ar[u]_{|id >< squares|^*}
}
\end{eqnarray}


Podemos definir a função rose2 list através do catamorfismo de RoseTrees que tem como gene \textit{gr2l}, esta função transforma uma RoseTree numa lista e será usada para 
extrair os quadrados da árvore auxiliar.

O gene \textit{gr2l} é bastante simples e fizemo-lo de forma \textit{point-free}. O que esta função faz é colocar à cabeça da lista a raiz da árvore e concatenar esse elemento 
à concatenação de todos os elementos das subarvores. o que se obtem aplicando \textit{cons} ao produto de \textit{id} e \textit{concat}.

\begin{code}
rose2List = cataRose gr2l

gr2l = cons . (id >< concat)
\end{code}
O esquema do catamorfismo \textit{rose2List} tem o seguinte aspeto:
\begin{eqnarray}
\xymatrix@@C=1.3cm{
|Square|^* & & Square \times (Square^*)^* \ar[ll]_{gr2l}\\
|RoseTree|\ |Square|\ar@@/^1pc/[rr]^{|out|} \ar[u]^{rose2List} & \cong & |Square><RoseTree|\ |Square|^* \ar@@/^1pc/[ll]^{|in|} \ar[u]_{id\times rose2List^*}
}
\end{eqnarray}

Logo, através dos esquemas já construidos, conseguimos elaborar o esquema do hilomofismo \textit{sierpinski} da seguinte forma:
\begin{eqnarray}
\xymatrix@@C=1.3cm{
|Square|^* & & Square \times (Square^*)^* \ar[ll]_{gr2l}\\
|RoseTree|\ |Square|\ar@@/^1pc/[rr]^{|out|} \ar[u]^{rose2List} & \cong & |Square><RoseTree|\ |Square|^* \ar@@/^1pc/[ll]^{|in|} \ar[u]_{id\times rose2List^*}\\
|Square >< Int|\ar[u]^{squares} \ar[rr]_{gsq} & & |Square >< (Square >< Int)|^*\ar[u]_{|id >< squares|^*}
}
\end{eqnarray}

Por fim, como a função \textit{constructSierp} é um hilomofismo de listas, é necessário definir o anamorfismo \textit{carpets} e o catamorfismo \textit{present} com os tipos presentes 
na dica do enunciado. A função \textit{carpets} constroi a lista de todos os tapetes gerados até à profundidade passada como argumento. enquanto que a função \textit{present} percorre 
a lista de quadrados gerados por \textit{carpets}, desenhando-os esperando um segundo de intervalo.

Para conseguirmos trabalhar com a função \textit{carpets} foi necessário criarmos um quadrado de exemplo, que serve como ponto de partida para a criação da lista dos tapetes de Sierpinksi. 
Esse quadrado chama-se \textit{squareExemplo} e caso desejamos criar tapetes a partir de outro ponto de partida, basta alterar o quadrado definido.

No caso da função \textit{carpets}, a lista de quadrados gerados obtem-se aplicando o hilomofismo \textit{sierpinski}, n vezes, uma vez para cada profundidade, o que se consegue através da 
lista com elementos de 0 até n.

A função \textit{present} simplesmente aplica a função \textit{drawSq} para todos os elementos da lista gerada por \textit{carpets}, esperando depois 1 segundo graças à função \text{await}.

Primeira abordagem, sem anamorfismos e catamorfismos:

\begin{spec}

carpets :: Int -> [[Square]]
carpets n = map (\s -> (sierpinski (squareExemplo,s))) [0..n]

present ::[[Square]] -> IO [()]
present = sequence . map(\l -> do {(drawSq l); await;})

\end{spec}

Segunda abordagem, com anamorfismos e catamorfismos:

\begin{code}
outC :: Int -> Either () (Int,Int)
outC (-1) = i1 ()
outC n = i2 (n,n-1)

carpets :: Int -> [[Square]]
carpets = anaList ((id -|- ((curry (sierpinski) (squareExemplo)) >< id)) . outC)

squareExemplo = ((0.0,0.0),32.0)

present ::[[Square]] -> IO [()]
present = sequence . cataList (either (nil) (cons . (dr >< id)))
  where
    dr l = do { (drawSq l); await; }

\end{code}

O esquema básico do anamorfismo \textit{carpets} é o seguinte:
\begin{eqnarray}
\xymatrix
{
(Square^*)^* \ar@@/^1pc/[rrrr]^{|out|} & & \cong & & 1 + ((Square^*) \times (Square^*))^* \ar@@/^1pc/[llll]^{|in|} \\
Int \ar[u]^{carpets} \ar[rr]_{outC} & & 1 + (Int \times Int) \ar[rr]_{*} & & 1 + Square^* \times Int \ar[u]_{id + id \times carpets}
}
\end{eqnarray}
\begin{spec}
*: id + ((curry (sierpinski) (squareExemplo)) >< id)
\end{spec}

E o esquema básico do catamorfismo present é:
\begin{eqnarray}
\xymatrix{
IO [()]\\
[IO ()] \ar[u]^{sequence} & & 1 + Square^* \times [IO()] \ar[ll]_{(nil) + (cons . (dr \times id))} \\
(Square^*)^* \ar@@/^1pc/[rr]^{|out|}  \ar[u]^{present} & \cong & 1 + ((Square^*) \times (Square^*))^* \ar@@/^1pc/[ll]^{|in|} \ar[u]_{id + id \times present} \\
}
\end{eqnarray}

E assim o hilomorfismo \textit{constructSierp} tem o seguinte esquema:
\begin{eqnarray}
\xymatrix{
IO [()]  & & \\
[IO ()] \ar[u]^{sequence} & & 1 + Square^* \times [IO()] \ar[ll]_{(nil) + (cons . (dr \times id))} \\
(Square^*)^* \ar@@/^1pc/[rr]^{|out|}  \ar[u]^{present} & \cong & 1 + ((Square^*) \times (Square^*))^* \ar@@/^1pc/[ll]^{|in|} \ar[u]_{id + id \times present} \\
Int \ar[u]^{carpets} \ar[r]_{outC} & 1 + (Int \times Int) \ar[r]_{*} & 1 + Square^* \times Int \ar[u]_{id + id \times carpets}
}
\end{eqnarray}
\begin{spec}
*: id + ((curry (sierpinski) (squareExemplo)) >< id)
\end{spec}

\subsection*{Problema 4}
\subsubsection*{Versão não probabilística}

Este exercício quatro podemos dizer que é um exercício que engloba todos os objetivos da disciplina,
desde o uso de catamorfismos, anamorfismos, hilomofismos, monads, reutilização de código e nos casos
em que é possível, definir funções polimorficas e point-free.

Começando pelo ínicio. Foi nos pedido que definissemos o gene de |consolidate'| e 
chegamos à seguinte solução:

\begin{code}
cgene :: (Num b, Eq a) => Either () ((a, b), [(a, b)]) -> [(a, b)] 
cgene = either (nil) (funCgene)
\end{code}

A função auxiliar funCgene é definida da seguinte maneira:

\begin{code}
funCgene :: (Eq a, Num b) => ((a,b),[(a, b)]) -> [(a, b)]
funCgene arg = case lu of
                  Nothing -> cons arg
                  Just n -> (cons . (( id >< (+n)) >< (filter (\tuplo -> (p1 tuplo) /= esq)))) arg
  where
    lu = (uncurry (List.lookup) . (p1 >< id)) arg
    esq = (p1 . p1) arg
\end{code}

Esta função funCgene vai primeiramente verificar se uma determinada "chave" exista numa 
lista de tuplos e se sim, qual era o valor associado. 
Para isso tivemos recurso à função lookup definida no modulo List.hs . 
Esta função lookup recebe a chave e a lista sem ser sub a forma de par. 
Devido a isso usamos a função uncurry.
Após esta fase temos 2 hipoteses, ou a chave foi encontrada e temos Just e o valor associado, 
ou não foi encontrada e temos Nothing. 

Se tivermos Nothing o que esta função faz é invocar a função cons definida em Cp.hs e vai simplesmente
adicionar o elemento à esquerda do par dado como argumento à cabeça da lista que está
à direita do par dado como argumento. 

Caso o valor tenha sido encontrado, então vamos aplicar primeiramente uma função à esquerda 
e uma função à direita no par recebido como argumento. 

A função aplicado ao par do lado esquerdo, simplesmente aumento um certo valor ao número que está 
à direita desse par. Essa quantia será valor encontrado pela função lookup. 
Como nós não queremos ter chaves repetidas, a função do lado direito irá evitar isso mesmo.
Para isso invoca a função filter já definida np prelude, de forma a eliminar o elemento 
com a tal chave encontrado pela função lookup. 

Após estas duas operações é invocada a função cons definida no modulo Cp.hs que irá fazer a mesma operação
que no caso da função Lookup retornar Nothing.

Partindo para a função pairup, esta ficou definida da seguinte forma:

\begin{code}
pairup = (either (nil) (fun) . outList)
  where
    fun = conc . split (fun2) (pairup . p2)
    fun2 (x,y) = map(\e -> (x,e)) y 
\end{code}

A nossa função pairup pode ser representada da seguinte forma:

\begin{eqnarray*}
\xymatrix{
  (A \times A)^* \\
  & &  1 + (A, A^*)\ar[ull]_{|either (nil) (fun) |}\\
  A^*\ar[urr]_{|outList|}\ar[uu]^{|pairup|} 
}
\end{eqnarray*}

A função auxiliar fun, simplesmente invoca a chamada recursiva da função pairup à cauda da lista
e invoca a função fun2. Por final, faz a concatenação dos dois resultados.

Nesta função fun, não utilizamos a catamorfismo devido a que fun2 precisa da cauda original recebida como
argumento.

O diagrama da nossa função auxiliar fun, é o seguinte:

\begin{eqnarray*}
\xymatrix@@C=1.2cm{
  (A, A^*)\ar[rr]^{|split (fun2) (pairup . p2)|} & & (A^*,A^*)\ar[rr]^{|conc|} & & (A \times A)^*
}
\end{eqnarray*}

A nossa função |fun2| é  muito similar à função zip. A função zip associa elementos de 2 listas, 
originando uma lista com tuplos das respetivas associações. 
A nossa função |fun2| simplesmente um elemento a cada um dos elementos de uma lista, originando 
na mesma tuplos.

Passando para a função matchResult, numa primeira abordargem defimos a matchResult da seguinte forma:

\begin{spec}
    matchResult f p = [(e1,pontos1),(e2,pontos2)]
    where
      e1 = p1 p
      e2 = p2 p
      result = f p
      pontos1 = getpontuacao (e1,result)
      pontos2 = getpontuacao (e2,result)
\end{spec}

Esta função é bastante simples, mas não trabalha como uma função de point free.
Após resolvermos todos os exercícios do projeto, proposemo-nos em adaptar certas 
funções para point free. A match result foi uma delas. Sendo assim a nossa função matchResult 
ficou definida da seguinte forma:

\begin{code}
matchResult f = getPointsMatch . split (id) (f)
\end{code}

As funções auxiliares a matchResult são:

\begin{code}

getpontuacao :: (Team, Maybe Team) -> Integer
getpontuacao (e,r) = case r of
                      Nothing -> 1
                      Just t -> if t == e then 3
                                else 0

getPointsMatch :: (Match,Maybe Team) -> [(Team,Integer)]
getPointsMatch = conc . (fmr >< fmr) . split (p1 >< id) (p2 >< id)
    where 
        fmr = singl . split (p1) (getpontuacao)

\end{code}

Um diagrama a demonstrar como é que a função matchResult e a getPointsMatch funcionam em conjunto:

\begin{eqnarray*}
\xymatrix{
  (E \times |Nat0|)^* & & (E \times |Nat0|)^* \times (E \times |Nat0|)\ar[ll]^{|uncurry (++)|}\\
  & & & & ((E \times R) \times (E \times R))\ar[ull]_{|fmr >< fmr|}\\
  (f \ (E \times E))\ar[rr]^{|split (id) (f)|}\ar[uu]^{|matchResult|} & & ((E \times E) \times R)\ar[urr]^{|split (p1 >< id) (p2 >< id)|}\ar[uu]^{|getPointsMatch|}\\
}
\end{eqnarray*}

A função fmr é representada da seguinte forma:

\begin{eqnarray*}
\xymatrix{
  (E \times R)\ar[rr]^{|split (p1) (getpontuacao)|} & & (E \times |Nat0|)\ar[rr]^{|singl|} & & (E,Nat)^* 
}
\end{eqnarray*}

Passaremos a explicar cada passo esta nossa função matchResult. Primeiramente a nossa função 
pega na função recebida como argumento e aplica à partida em questão. De forma a não perder quais
as equipas que jogaram, é originado o par (Partida, Resultado) ou ((Equipa 1, Equipa 2), Resultado).

A etapa seguinte é tentar organizar este tuplo em (equipa,resultado). Para isto utilizamos mais uma
vez a função split cujas funções fornecedias, transformam par ((Equipa 1, Equipa 2), Resultado) 
em  ((Equipa 1, Resultado), (Equipa 2, Resultado)). Quisemos organizar assim para tornar mais
fácil a utilização da nossa função getpontuacao. Após isto invocamos a função fmr que 
transforma o último par em ([(Equipa 1, Pontuação 1)], [(Equipa 2, Pontuação 1)]), utilizando
a função getpontuacao como auxiliar. Após esta fase basta apenas adaptar o tipo deste resultado para 
o pretendido que é [(Equipa 1, Pontuação 1), (Equipa 2, Pontuação 1)]. Para isso basta invocar 
a função conc definida no modulo Cp.hs.

Passando para a função glt, o diagrama da nossa função glt é o seguinte:

\begin{eqnarray}
\xymatrix{
  A^*\ar[rr]^{|glt|} & & A + (A^* \times A^*)
}
\end{eqnarray}

A nossa função glt, quando recebe uma lista com apenas um único elemento, injeta esse mesmo
elemento à esquerda numa alternativa. Caso contrário, invoca a função |splitAt| do prelude do 
Haskell. Esta função necessita de um indice para separar a lista. Este indice neste exercício 
será sempre o meio da lista. Esta função, utiliza a função outP2 definida no exercicio 2, pois
esta função já organiza a lista da forma como nós pretendemos.

A definição point-free que chegamos da função glt é a seguinte:

\begin{code}
glt = (id -|- ((uncurry splitAt) . split (metade . length) (id) . cons)) . outP2
    where
      metade n = div n 2
\end{code}

\subsubsection*{Versão probabilística}

A primeira abordagem que tivemos foi encontrar o tipo da função pinitKnockoutStage.

Relativamente ao tipo do resultado, basta pegar no tipo de initKnockoutStage e adicionar
a parte das probabilidades, isto é, Dist (LTree Team).

O problema encontra-se agora no tipo de encontrada.

Nós reparamos que a função vai ser invocada na seguinte função:

\begin{spec}
pgroupStage = pinitKnockoutStage .! psimulateGroupStage . genGroupStageMatches
\end{spec}

Ora bem, nós já sabemos que o tipo da função definida pela equipa docente psimulateGroupStage
é : psimulateGroupStage :: [[Match]] -> Dist [[Team]]].

Então desenvolvemos o seguinte:

\begin{eqnarray*}
\start
      |pinitKnockoutStage .! psimulateGroupStage . genGroupStageMatches|
      \just\equiv{Associatividade 69}
      |pinitKnockoutStage .! (psimulateGroupStage . genGroupStageMatches)|
      \just\equiv{Composição monádica 86}
      |do {b <- (psimulateGroupStage . genGroupStageMatches); pinitKnockoutStage b}|
\end{eqnarray*}

Ou seja, pinitKnockoutStage recebe uma lista de listas de equipas ([[Team]]).

Implementamos a função pinitKnockoutStage da seguinte forma:

\begin{code}
pinitKnockoutStage :: [[Team]] -> Dist (LTree Team)
pinitKnockoutStage = cataLTree (either createDist tupleDist) . initKnockoutStage
  where
    createDist t = D [(Leaf t, 1)]
    tupleDist = uncurry (joinWith (curry Fork))
\end{code}

Esta função primeiramente invoca a função initKnockoutStage definida já na versão não probabilística.

Após isto nós obtemos uma LTree já com as partidas formadas, bastando apenas iniciar 
as probabilidades.

Para isto usamos a cataLTree defina no module LTree.hs. 

Este catamorfismo para as folhas, cria a distribuição com probabilidade igual a 100\%. 
Como as folhas representam apenas uma equipa, a probabilidade de elas mesmas "vencerem" é 100\%, 
dai atribuirmos essa probabilidade.

Para os nodos Fork, é aplicada a função tupleDist. Esta função irá criar um Fork, pois a cataLTree
"destroi" a LTree e é necessário contrui-la outra vez. Depois disso, como as subarvores são
distribuição de LTree, precisamos de utilizar a função joinWith definida em Probability.hs 
de forma a criar as combinações das distribuições, para criar uma LTree de probabilidades.

Um esquema a demonstrar como esta função funciona:

\begin{eqnarray}
\xymatrix{
  Dist (LTree Team)                                                                 & & Team + (Dist\ (LTree\ Team) \times Dist\ (LTree\ Team))\ar[ll]_(0.65){|either createDist tupleDist|}\\
  LTree Team \ar[u]^{|cataLTree (either createDist tupleDist)|}\ar[rr]_(0.35){|outLTree|} & & Team + (LTree\ Team \times LTree\ Team) \ar[u]_{|id + pgroupWinners >< pgroupWinners|}\\
  (Team^*)^*\ar[u]^{|initKnockoutStage|}
}
\end{eqnarray}

Partindo para  a função pgroupWinners, esta nossa função ficou definida da seguinte forma:

\begin{code}
pgroupWinners :: (Match -> Dist (Maybe Team)) -> [Match] -> Dist [Team]
pgroupWinners f = pmatchResult . split (sequence . map (\m -> (f m))) (id)
\end{code}

Esta função primeiramente gera as probabilidade do resultado de todas as partidas e de seguida 
invoca a função pmatchResult.

A função pmatchResult está implementada assim:

\begin{code}
getPoints :: ([Match],[Maybe Team]) -> [(Team,Integer)]
getPoints =  cataList (either (nil) (conc . (getPointsMatch >< id))) . uncurry zip

pmatchResult :: (Dist [Maybe Team],[Match]) -> Dist [Team]
pmatchResult (resultados,partidas) = mapD (best 2 . consolidate . getPoints . split (const partidas) (id)) resultados
\end{code}

A função pmatchResult usa como função auxiliar getPoints. 

Esta função getPoints é praticamente igual à função getPointsMatch pois a ideia para ambas é a mesma.
A getPointsMatch foi definida na parte não probabilística. 
A principal diferença entre estas duas funções está nos argumentos, em que getPointsMatch 
recebe um tuplo (Match, Maybe Team) e getPoints recebe ([Match],[Maybe Team]).
 
A função pmatchResult simplesmente aplica uma sequência de funções às probabilidades
geradas na função pgroupWinners. Primeiramente é gerado o tuplo ([Match],[Maybe Team])
para usarmos a função getPoints. Depois invocamos a função já definida previamente pela equipa
docente, a consolidate, de forma a obtermos as pontuações finais de cada equipa no final do grupo.
Depois invocamos a best, que também foi definida pela equipa docente. A best vai buscar a n 
melhores equipas em cada grupo, neste caso, as 2 melhores. 
Para aplicar estas funções às probabilidades, utilizamos a função mapD que tal como um map,
aplica uma certa função ao seu conteudo, só que em vez de ser para lista, é para a distribuição.

\textbf{Valorização}

A pedido da equipa docente vamos testar as funções pwinner e winner para rankings diferentes.

Sendo assim manipulamos os rankings para a seguinte forma:

\begin{spec}
rankings = [
         ("Argentina",4.4),
         ("Australia",4.0),
         ("Belgium",4.2),
         ("Brazil",4.7),
         ("Cameroon",4.0),
         ("Canada",4.0),
         ("Costa Rica",4.1),
         ("Croatia",4.7),
         ("Denmark",4.3),
         ("Ecuador",4.0),
         ("England",3.8),
         ("France",5.0),
         ("Germany",5.0),
         ("Ghana",3.9),
         ("Iran",4.0),
         ("Japan",4.1),
         ("Korea Republic",3.9),
         ("Mexico",4.5),
         ("Morocco",4.2),
         ("Netherlands",4.8),
         ("Poland",4.2),
         ("Portugal",5.5),
         ("Qatar",3.9),
         ("Saudi Arabia",3.9),
         ("Senegal",4.3),
         ("Serbia",3.8),
         ("Spain",4.0),
         ("Switzerland",4.4),
         ("Tunisia",4.1),
         ("USA",4.4),
         ("Uruguay",4.5),
         ("Wales",4.3)]
\end{spec}

O resultado da execução de winner foi:

\begin{spec}
*Main> winner
"Portugal"
\end{spec}

O resultado da execução de pwinner foi:

\begin{spec}
*Main> pwinner
   "Portugal"  33.7%
     "France"  14.7%
    "Germany"  14.0%
"Netherlands"   8.8%
    "Croatia"   5.6%
     "Mexico"   3.8%
     "Brazil"   3.8%
    "Uruguay"   2.8%
        "USA"   2.7%
    "Senegal"   2.0%
"Switzerland"   1.8%
  "Argentina"   1.6%
      "Wales"   1.6%
    "Denmark"   1.2%
    "Morocco"   0.7%
    "Tunisia"   0.3%
     "Poland"   0.3%
      "Spain"   0.2%
      "Japan"   0.1%
 "Costa Rica"   0.1%
     "Canada"   0.1%

\end{spec}

Tendo em conta o nosso ranking, os resultados apresentados são os esperados.

%----------------- Índice remissivo (exige makeindex) -------------------------%

\printindex

%----------------- Bibliografia (exige bibtex) --------------------------------%

\bibliographystyle{plain}
\bibliography{cp2223t}

%----------------- Fim do documento -------------------------------------------%

\end{document}
