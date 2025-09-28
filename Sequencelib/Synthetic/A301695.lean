/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A301695 sequence 
-/


namespace Sequence

@[OEIS := A301695, offset := 0, derive := true, maxIndex := 100]
def A301695 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ (x - (x / y)) + y) (x + x) x * 2) + 1)

end Sequence

