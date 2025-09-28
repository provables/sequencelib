/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002754 sequence 
-/


namespace Sequence

@[OEIS := A002754, offset := 0, derive := true, maxIndex := 21]
def A002754 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((((y - 1) / 2) + x) + x) + x) (x + x) 0

end Sequence

