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
# A022521 sequence 
-/


namespace Sequence

@[OEIS := A022521, offset := 0, derive := true, maxIndex := 100]
def A022521 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((1 + 4) * loop (λ (x _y : ℤ) ↦ (x * x) + x) 2 x))

end Sequence

