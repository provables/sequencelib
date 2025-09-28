/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007909 sequence 
-/


namespace Sequence

@[OEIS := A007909, offset := 0, derive := true, maxIndex := 10]
def A007909 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (x + x) + loop2 (λ (_x y : ℤ) ↦ -y) (λ (x _y : ℤ) ↦ x) y 1 1) x 1

end Sequence

