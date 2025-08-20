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
# A133648 sequence 
-/


namespace Sequence

@[OEIS := A133648, offset := 1, derive := true, maxIndex := 25]
def A133648 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + ((2 * loop (λ (x y : ℤ) ↦ (2 * (x + y)) + x) x 2) + x))

end Sequence

