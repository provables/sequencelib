/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066093 sequence 
-/


namespace Sequence

@[OEIS := A066093, offset := 0, derive := true, maxIndex := 25]
def A066093 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((y * y) / (2 + x)) + y) (1 + x) 0 - 1)

end Sequence

