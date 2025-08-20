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
# A032966 sequence 
-/


namespace Sequence

@[OEIS := A032966, offset := 1, derive := true, maxIndex := 62]
def A032966 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (_x y : ℤ) ↦ y) (x - (2 + (2 * (2 + 4)))) 1 + x)

end Sequence

