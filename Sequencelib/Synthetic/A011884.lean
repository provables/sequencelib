/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011884 sequence 
-/


namespace Sequence

@[OEIS := A011884, offset := 0, derive := true, maxIndex := 100]
def A011884 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) - x) / ((2 * loop (λ (x _y : ℤ) ↦ x * x) 2 2) - 1))

end Sequence

