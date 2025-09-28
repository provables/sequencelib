/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154687 sequence 
-/


namespace Sequence

@[OEIS := A154687, offset := 0, derive := true, maxIndex := 86]
def A154687 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (2 * (2 + (x / 2))) - y) (λ (x _y : ℤ) ↦ x) x 0 1 + 1)

end Sequence

