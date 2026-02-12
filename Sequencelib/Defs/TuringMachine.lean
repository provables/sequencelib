import Mathlib

--open Turing TM0

-- type of tape symbols
variable (Γ : Type*)

-- type of "labels" or TM states
variable (Λ : Type*)

abbrev Stmt := Γ × Turing.Dir

instance stmtInhabited [Inhabited Γ] : Inhabited (Stmt Γ) := ⟨default, default⟩

def Machine [Inhabited Λ] := Λ → Γ → Option (Λ × (Stmt Γ))

instance machineInhabited [Inhabited Λ] : Inhabited (Machine Γ Λ) := by
  unfold Machine; infer_instance

abbrev Cfg := Turing.TM0.Cfg

variable {Γ Λ}
variable [Inhabited Λ]
variable [Inhabited Γ]

def step (M : Machine Γ Λ) : Cfg Γ Λ → Option (Cfg Γ Λ) :=
  fun ⟨q, T⟩ ↦ M q T.1 |>.map fun ⟨q', ⟨a, d⟩⟩ ↦ ⟨q', T.write a |>.move d⟩

def eval (M : Machine Γ Λ) (l : List Γ) : Part (Turing.ListBlank Γ) :=
  Turing.eval (step M) (Turing.TM0.init l) |>.map fun c ↦ c.Tape.right₀
