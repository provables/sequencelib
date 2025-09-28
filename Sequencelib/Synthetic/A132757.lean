/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132757 sequence 
-/


namespace Sequence

@[OEIS := A132757, offset := 0, derive := true, maxIndex := 46]
def A132757 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 + (x + y)) x (loop (λ (x y : ℤ) ↦ x * (2 + y)) 2 x)

end Sequence

