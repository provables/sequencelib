/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090555 sequence 
-/


namespace Sequence

@[OEIS := A090555, offset := 1, derive := true, maxIndex := 6]
def A090555 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (_x y : ℤ) ↦ y + y) x ((4 + 1) * 2) 1

end Sequence

