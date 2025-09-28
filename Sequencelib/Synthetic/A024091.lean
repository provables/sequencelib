/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024091 sequence 
-/


namespace Sequence

@[OEIS := A024091, offset := 0, derive := true, maxIndex := 19]
def A024091 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) ((x + x) + x) 1 - (x * x) * x)

end Sequence

