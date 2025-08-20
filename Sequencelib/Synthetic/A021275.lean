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
# A021275 sequence 
-/


namespace Sequence

@[OEIS := A021275, offset := 0, derive := true, maxIndex := 99]
def A021275 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x : ℤ) ↦ x % 3) ((x % (1 + 4)) - 1)

end Sequence

