/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A301298 sequence 
-/


namespace Sequence

@[OEIS := A301298, offset := 0, derive := true, maxIndex := 100]
def A301298 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (y - x) / 2) (x + x) 1 + (x + x) * 2)

end Sequence

