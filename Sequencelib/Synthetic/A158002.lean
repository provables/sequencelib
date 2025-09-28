/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158002 sequence 
-/


namespace Sequence

@[OEIS := A158002, offset := 0, derive := true, maxIndex := 100]
def A158002 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ (x + y) * (2 + x)) 2 2 * 2) * x) + 1)

end Sequence

