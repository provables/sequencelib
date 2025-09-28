/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033065 sequence 
-/


namespace Sequence

@[OEIS := A033065, offset := 1, derive := true, maxIndex := 65]
def A033065 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (_x y : ℤ) ↦ y) (x - loop (λ (x _y : ℤ) ↦ 1 + (x + x)) 2 2) 1 + x)

end Sequence

