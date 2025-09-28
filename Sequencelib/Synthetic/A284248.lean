/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A284248 sequence 
-/


namespace Sequence

@[OEIS := A284248, offset := 1, derive := true, maxIndex := 100]
def A284248 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ 2 + ((x / y) + x)) x 0 / (1 + (2 + x)))

end Sequence

