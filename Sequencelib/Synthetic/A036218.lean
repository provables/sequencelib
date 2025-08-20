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
# A036218 sequence 
-/


namespace Sequence

@[OEIS := A036218, offset := 0, derive := true, maxIndex := 78]
def A036218 (x : ℕ) : ℕ :=
  Int.toNat <| (x % loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 2)

end Sequence

