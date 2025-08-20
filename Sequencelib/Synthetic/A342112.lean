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
# A342112 sequence 
-/


namespace Sequence

@[OEIS := A342112, offset := 0, derive := true, maxIndex := 37]
def A342112 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ x * x) 2 x * x) / (2 + (2 * 4)))

end Sequence

