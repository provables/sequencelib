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
# A167210 sequence 
-/


namespace Sequence

@[OEIS := A167210, offset := 0, derive := true, maxIndex := 4]
def A167210 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + 4) * loop (λ (x y : ℤ) ↦ (2 + (x / 2)) + y) x x)

end Sequence

