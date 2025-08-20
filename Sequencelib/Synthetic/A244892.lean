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
# A244892 sequence 
-/


namespace Sequence

@[OEIS := A244892, offset := 0, derive := true, maxIndex := 76]
def A244892 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ 1 - x) (x % (1 + 4)) 2 + 2) + 1)

end Sequence

