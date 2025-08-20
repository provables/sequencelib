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
# A067414 sequence 
-/


namespace Sequence

@[OEIS := A067414, offset := 0, derive := true, maxIndex := 17]
def A067414 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (2 + ((3 % x) + 2)) * (x + x)) x 1

end Sequence

