/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A270388 sequence 
-/


namespace Sequence

@[OEIS := A270388, offset := 2, derive := true, maxIndex := 100]
def A270388 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ 1 + ((x + x) + y)) (λ (x _y : ℤ) ↦ x) x 1 0 % (2 + x))

end Sequence

