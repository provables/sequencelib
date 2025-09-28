/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027981 sequence 
-/


namespace Sequence

@[OEIS := A027981, offset := 0, derive := true, maxIndex := 50]
def A027981 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ 2 * (2 + x)) y 2 + x) + x) x 1

end Sequence

