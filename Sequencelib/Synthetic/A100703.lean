/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100703 sequence 
-/


namespace Sequence

@[OEIS := A100703, offset := 0, derive := true, maxIndex := 11]
def A100703 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (x * 2) * y) x 2 3 * 2) - 1)

end Sequence

