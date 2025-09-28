/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114950 sequence 
-/


namespace Sequence

@[OEIS := A114950, offset := 0, derive := true, maxIndex := 7]
def A114950 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ x * x) 2 x + y * y) (λ (x _y : ℤ) ↦ x) x 1 0

end Sequence

