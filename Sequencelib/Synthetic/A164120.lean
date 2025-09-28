/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164120 sequence 
-/


namespace Sequence

@[OEIS := A164120, offset := 1, derive := true, maxIndex := 100]
def A164120 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 * loop2 (λ (_x y : ℤ) ↦ 2 + y) (λ (x _y : ℤ) ↦ (2 + x) + x) x 2 1) + 1)

end Sequence

