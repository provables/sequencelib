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
# A322116 sequence 
-/


namespace Sequence

@[OEIS := A322116, offset := 1, derive := true, maxIndex := 34]
def A322116 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop2 (λ (x y : ℤ) ↦ (2 * (x + y)) + y) (λ (x _y : ℤ) ↦ x) x 2 0 * 2) - 2)

end Sequence

