/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077417 sequence 
-/


namespace Sequence

@[OEIS := A077417, offset := 0, derive := true, maxIndex := 100]
def A077417 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 x - y) (λ (x _y : ℤ) ↦ x) x 1 1

end Sequence

