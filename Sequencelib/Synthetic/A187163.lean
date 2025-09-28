/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187163 sequence 
-/


namespace Sequence

@[OEIS := A187163, offset := 1, derive := true, maxIndex := 100]
def A187163 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (1 + y) * (x * y)) (λ (_x _y : ℤ) ↦ 2) 2 (1 + x) x

end Sequence

