import Lean
open Lean

inductive Codomain : Type where
  | Nat
  | Int
  deriving BEq, Hashable, Repr, Inhabited, DecidableEq

instance : Coe Codomain Type where
  coe
  | .Nat => Nat
  | .Int => Int

instance : Coe Codomain Name where
  coe
  | .Nat => `Nat
  | .Int => `Int

instance {c : Codomain} : Repr (c : Type) where
  reprPrec t _ := by
    cases c with
    | Nat => exact s!"{t} : Nat".toFormat
    | Int => exact s!"{t} : Int".toFormat

instance {c : Codomain} : ToString (c : Type) where
  toString x := by
    cases c with
    | Nat => exact s!"{x}"
    | Int => exact s!"{x}"

instance {c : Codomain} : ToExpr c where
  toExpr x := by
    cases c with
    | Nat => exact toExpr x
    | Int => exact toExpr x
  toTypeExpr := mkConst c

def codomainOf {m : Type → Type} [Monad m] [MonadError m] (e : Expr) : m Codomain := do
  match e with
  | .forallE _ (.const ``Nat _) (.const ``Nat _) _ => pure .Nat
  | .forallE _ (.const ``Nat _) (.const ``Int _) _ => pure .Int
  | _ => throwError "Only functions of type ℕ → ℕ or ℕ → ℤ are supported"

instance : ToString Codomain where
  toString
  | .Nat => "ℕ"
  | .Int => "ℤ"
