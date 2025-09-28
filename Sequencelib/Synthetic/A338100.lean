/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A338100 sequence 
-/


namespace Sequence

@[OEIS := A338100, offset := 1, derive := true, maxIndex := 21]
def A338100 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 2 * ((2 + y) * (x * 2))) (λ (_x _y : ℤ) ↦ 1) x 1 2

end Sequence

