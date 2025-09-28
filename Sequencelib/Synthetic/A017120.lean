/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017120 sequence 
-/


namespace Sequence

@[OEIS := A017120, offset := 0, derive := true, maxIndex := 16]
def A017120 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 3 (2 * (2 + (2 * (x + x))))

end Sequence

