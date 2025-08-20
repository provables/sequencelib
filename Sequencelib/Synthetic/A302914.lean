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
# A302914 sequence 
-/


namespace Sequence

@[OEIS := A302914, offset := 1, derive := true, maxIndex := 15]
def A302914 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ (1 + (2 * (2 * (y + 1)))) * (x * y)) x 1

end Sequence

