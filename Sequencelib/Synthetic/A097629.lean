/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097629 sequence 
-/


namespace Sequence

@[OEIS := A097629, offset := 1, derive := true, maxIndex := 100]
def A097629 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ 2 * ((x * y) + x)) (λ (_x y : ℤ) ↦ y) x 1 x / (1 + x))

end Sequence

