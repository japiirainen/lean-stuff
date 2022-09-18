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