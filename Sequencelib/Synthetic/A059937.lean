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
# A059937 sequence 
-/


namespace Sequence

@[OEIS := A059937, offset := 0, derive := true, maxIndex := 26]
def A059937 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x _y : ℤ) ↦ x + x) (x + 2) x - x) * (1 + x)) / 2)

end Sequence

