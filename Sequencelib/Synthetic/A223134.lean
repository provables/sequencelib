/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A223134 sequence 
-/


namespace Sequence

@[OEIS := A223134, offset := 0, derive := true, maxIndex := 100]
def A223134 (x : ℕ) : ℕ :=
  Int.toNat <| ((x + x) + loop2 (λ (_x y : ℤ) ↦ y) (λ (_x _y : ℤ) ↦ 1) x 1 2)

end Sequence

