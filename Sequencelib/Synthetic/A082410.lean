/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082410 sequence 
-/


namespace Sequence

@[OEIS := A082410, offset := 1, derive := true, maxIndex := 100]
def A082410 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 1 - (x % 2)) (x % 2) (x / 2)) x x

end Sequence

