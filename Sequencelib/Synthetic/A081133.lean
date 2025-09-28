/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081133 sequence 
-/


namespace Sequence

@[OEIS := A081133, offset := 0, derive := true, maxIndex := 100]
def A081133 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) x (1 + loop (λ (x y : ℤ) ↦ x + y) x x) x

end Sequence

