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
# A129005 sequence 
-/


namespace Sequence

@[OEIS := A129005, offset := 0, derive := true, maxIndex := 100]
def A129005 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + x) * (loop (λ (x _y : ℤ) ↦ (2 * (x + x)) + x) x x * x))

end Sequence

