/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162484 sequence 
-/


namespace Sequence

@[OEIS := A162484, offset := 1, derive := true, maxIndex := 100]
def A162484 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((x % 2) + loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x _y : ℤ) ↦ x) x 1 1) * 2)

end Sequence

