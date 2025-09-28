/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062346 sequence 
-/


namespace Sequence

@[OEIS := A062346, offset := 2, derive := true, maxIndex := 100]
def A062346 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((2 * (x + x)) / y) + x) (x + x) 3

end Sequence

