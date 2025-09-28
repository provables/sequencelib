/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A231103 sequence 
-/


namespace Sequence

@[OEIS := A231103, offset := 1, derive := true, maxIndex := 100]
def A231103 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ y - x) (λ (_x y : ℤ) ↦ (2 * (y + y)) + y) x 0 2

end Sequence

