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
# A155155 sequence 
-/


namespace Sequence

@[OEIS := A155155, offset := 0, derive := true, maxIndex := 100]
def A155155 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (((2 % y) + x) + x) + x) (2 + x) 1 * 2)

end Sequence

