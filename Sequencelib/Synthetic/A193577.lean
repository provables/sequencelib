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
# A193577 sequence 
-/


namespace Sequence

@[OEIS := A193577, offset := 0, derive := true, maxIndex := 100]
def A193577 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (2 * ((x + x) + x)) + x) x (1 + 4)

end Sequence

