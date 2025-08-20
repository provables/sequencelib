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
# A063722 sequence 
-/


namespace Sequence

@[OEIS := A063722, offset := 1, derive := true, maxIndex := 5]
def A063722 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop2 (λ (_x y : ℤ) ↦ 2 + ((y + y) + y)) (λ (x _y : ℤ) ↦ x) x 2 2 + 2) + 2)

end Sequence

