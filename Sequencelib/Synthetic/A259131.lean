/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A259131 sequence 
-/


namespace Sequence

@[OEIS := A259131, offset := 1, derive := true, maxIndex := 22]
def A259131 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((x + x) + x) + y) (λ (x _y : ℤ) ↦ x) (x + x) 3 2

end Sequence

