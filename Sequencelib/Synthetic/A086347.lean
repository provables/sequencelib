/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086347 sequence 
-/


namespace Sequence

@[OEIS := A086347, offset := 0, derive := true, maxIndex := 100]
def A086347 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ 2 * ((x + x) + y)) (λ (x _y : ℤ) ↦ x + x) x 2 1 / 2)

end Sequence

