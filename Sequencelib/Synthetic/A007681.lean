/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007681 sequence 
-/


namespace Sequence

@[OEIS := A007681, offset := 0, derive := true, maxIndex := 100]
def A007681 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + (x + x)) * loop (λ (x y : ℤ) ↦ x * y) x (1 + (x + x)))

end Sequence

