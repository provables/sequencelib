/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329939 sequence 
-/


namespace Sequence

@[OEIS := A329939, offset := 1, derive := true, maxIndex := 10]
def A329939 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ 1 - (x % loop (λ (x _y : ℤ) ↦ x * x) 2 2)) (1 + (x + x))

end Sequence

