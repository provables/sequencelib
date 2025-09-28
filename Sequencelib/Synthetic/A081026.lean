/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081026 sequence 
-/


namespace Sequence

@[OEIS := A081026, offset := 1, derive := true, maxIndex := 42]
def A081026 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ x + y) (λ (x y : ℤ) ↦ x / y) x 1 1

end Sequence

