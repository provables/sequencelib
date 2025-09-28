/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115603 sequence 
-/


namespace Sequence

@[OEIS := A115603, offset := 0, derive := true, maxIndex := 4]
def A115603 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (_x y : ℤ) ↦ ((y % 2) + 2) * y) ((x + x) + x) 1 + x)

end Sequence

