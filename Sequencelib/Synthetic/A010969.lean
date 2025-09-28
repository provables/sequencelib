/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010969 sequence 
-/


namespace Sequence

@[OEIS := A010969, offset := 16, derive := true, maxIndex := 100]
def A010969 (n : ℕ) : ℕ :=
  let x := n - 16
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((loop (λ (x _y : ℤ) ↦ x * x) 2 2 * x) / y) + x) x 1

end Sequence

