#eval Lean.versionString

def add1 (n : Nat) : Nat := n + 1

#eval add1 7

#eval 1 + 2

#eval String.append "Hello, " "Lean!"

#eval String.append "great " (String.append "oak " "tree")

#eval String.append "it is " (if 1 > 2 then "yes" else "no")

#eval 42 + 19

#eval String.append "A" (String.append "B" "C")

#eval String.append (String.append "A" "B") "C"

#eval if 3 == 3 then 5 else 7

#eval if 3 == 4 then "equal" else "not equal"

#eval (1 + 2 : Nat)

#eval (1 - 2 : Int)

#check String.append "hello" [" ", "world!"]

def hello := "Hello"

def lean : String := "Lean"

#eval String.append hello (String.append " " lean)

def maximum (n : Nat) (k : Nat) : Nat :=
  if n > k then n else k

#eval maximum (5 + 8) (2 * 7)

def joinStringsWith (s₁ s₂ s₃ : String) : String :=
  String.append s₂ (String.append s₁ s₃)

#eval joinStringsWith ", " "one" "and another"

#check joinStringsWith ": "

abbrev ℕ : Type := Nat

def volume (n₁ n₂ n₃ : ℕ) : ℕ :=
  n₁ * n₂ * n₃

#eval volume 3 4 5

def Str : Type := String

def aStr : Str := "This is a string."

structure Point where
  point ::
  x : Float
  y : Float
deriving Repr

def origin : Point := { x := 0, y := 0 }

#eval origin
#eval origin.x
#eval origin.y

def addPoints (p₁ p₂ : Point) : Point :=
  { x := p₁.x + p₂.x, y := p₁.y + p₂.y }

def distance (p₁ p₂ : Point) : Float :=
  let dx := (p₂.x - p₁.x) ^ 2
  let dy := (p₂.y - p₁.y) ^ 2
  (dx + dy).sqrt

#eval distance {x := 1, y := 2} {x := 5, y := -1}

structure Point3D where
  x : Float
  y : Float
  z : Float
deriving Repr

def origin3D : Point3D := { x := 0.0, y := 0.0, z := 0.0 }

def zeroX (p : Point) : Point :=
  { p with x := 0 }

def fourAndThree : Point :=
  { x := 4, y := 3 }

#eval zeroX fourAndThree
#eval zeroX (Point.point 4 3)

#check Point3D.mk

#eval "one string".append " and another"

structure RectangularPrism where
  width : Float
  height : Float
  depth : Float

def vol (r : RectangularPrism) : Float :=
  r.width * r.height * r.depth

structure Segment where
  s : Point
  e : Point

def length (s : Segment) : Float :=
  distance s.s s.e

#eval length { s := { x := 1, y := 2 }, e := { x := 5, y := -1 } }