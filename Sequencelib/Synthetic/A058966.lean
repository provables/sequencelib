/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058966 sequence 
-/


namespace Sequence

@[OEIS := A058966, offset := 3, derive := true, maxIndex := 100]
def A058966 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x * y) + y) (λ (_x _y : ℤ) ↦ 2) x 1 x

end Sequence

