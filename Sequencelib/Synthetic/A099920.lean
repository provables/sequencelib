/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099920 sequence 
-/


namespace Sequence

@[OEIS := A099920, offset := 0, derive := true, maxIndex := 100]
def A099920 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ 1 + y) (λ (x y : ℤ) ↦ x + y) x 0 x

end Sequence

