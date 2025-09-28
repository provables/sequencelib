/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175984 sequence 
-/


namespace Sequence

@[OEIS := A175984, offset := 1, derive := true, maxIndex := 6]
def A175984 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ (2 + y) * x) (λ (_x y : ℤ) ↦ y) y 1 x) x 0 + 1)

end Sequence

