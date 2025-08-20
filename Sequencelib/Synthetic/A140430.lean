/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A140430 sequence 
-/


namespace Sequence

@[OEIS := A140430, offset := 0, derive := true, maxIndex := 86]
def A140430 (x : ℕ) : ℕ :=
  Int.toNat <| ((((1 - x) % 3) * loop (λ (x _y : ℤ) ↦ -x) x 1) + 2)

end Sequence

