/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100931 sequence 
-/


namespace Sequence

@[OEIS := A100931, offset := 1, derive := true, maxIndex := 5]
def A100931 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) (loop (λ (x y : ℤ) ↦ (y * x) + x) x 2) 0 1

end Sequence

