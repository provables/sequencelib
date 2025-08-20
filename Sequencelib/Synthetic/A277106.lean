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
# A277106 sequence 
-/


namespace Sequence

@[OEIS := A277106, offset := 1, derive := true, maxIndex := 25]
def A277106 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * (3 * loop (λ (x _y : ℤ) ↦ (2 * (2 + x)) + x) x 2))

end Sequence

