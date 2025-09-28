/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A340445 sequence 
-/


namespace Sequence

@[OEIS := A340445, offset := 0, derive := true, maxIndex := 64]
def A340445 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (_x y : ℤ) ↦ y * y) x 1 - 1) / 3) / 4)

end Sequence

