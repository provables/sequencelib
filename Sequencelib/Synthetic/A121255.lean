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
# A121255 sequence 
-/


namespace Sequence

@[OEIS := A121255, offset := 1, derive := true, maxIndex := 12]
def A121255 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 * loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) (x + x) 0 2) * (1 + x))

end Sequence

