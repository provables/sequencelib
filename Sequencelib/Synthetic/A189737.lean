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
# A189737 sequence 
-/


namespace Sequence

@[OEIS := A189737, offset := 1, derive := true, maxIndex := 26]
def A189737 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ 3 * (x + y)) x 1 1 * 3)

end Sequence

