/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163979 sequence 
-/


namespace Sequence

@[OEIS := A163979, offset := 0, derive := true, maxIndex := 100]
def A163979 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ (x - (x % 3)) + y) x 0 * 2) + 1)

end Sequence

