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
# A004466 sequence 
-/


namespace Sequence

@[OEIS := A004466, offset := 0, derive := true, maxIndex := 33]
def A004466 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (((y - 1) * y) * (3 + 2)) + x) x x

end Sequence

