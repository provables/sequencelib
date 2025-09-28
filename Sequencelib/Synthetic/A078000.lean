/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078000 sequence 
-/


namespace Sequence

@[OEIS := A078000, offset := 0, derive := true, maxIndex := 19]
def A078000 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (x + x) + loop2 (λ (_x y : ℤ) ↦ -y) (λ (x _y : ℤ) ↦ x) y 1 1) x 1

end Sequence

