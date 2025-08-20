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
# A028401 sequence 
-/


namespace Sequence

@[OEIS := A028401, offset := 2, derive := true, maxIndex := 100]
def A028401 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (_x y : ℤ) ↦ 2 * (y + y)) x 2 1 + 1)

end Sequence

