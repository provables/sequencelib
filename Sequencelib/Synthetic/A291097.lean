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
# A291097 sequence 
-/


namespace Sequence

@[OEIS := A291097, offset := 2, derive := true, maxIndex := 32]
def A291097 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((loop2 (λ (x y : ℤ) ↦ (2 * (2 + x)) + y) (λ (_x _y : ℤ) ↦ 0) x 1 x - x) + 2)

end Sequence

