/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A208705 sequence 
-/


namespace Sequence

@[OEIS := A208705, offset := 1, derive := true, maxIndex := 50]
def A208705 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * (x + y)) + x) (λ (x _y : ℤ) ↦ x) ((1 + x) + x) 2 1

end Sequence

