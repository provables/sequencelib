/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A172486 sequence 
-/


namespace Sequence

@[OEIS := A172486, offset := 0, derive := true, maxIndex := 20]
def A172486 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y : ℤ) ↦ (x - 2) % y) x 0 - x) / 2) * x) % 2)

end Sequence

