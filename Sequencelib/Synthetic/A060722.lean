/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060722 sequence 
-/


namespace Sequence

@[OEIS := A060722, offset := 0, derive := true, maxIndex := 50]
def A060722 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x + x) + x) (x * x) 1

end Sequence

