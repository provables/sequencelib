/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083098 sequence 
-/


namespace Sequence

@[OEIS := A083098, offset := 0, derive := true, maxIndex := 100]
def A083098 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ y - x) (λ (x y : ℤ) ↦ 3 * (x + y)) x 1 2

end Sequence

