/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A199411 sequence 
-/


namespace Sequence

@[OEIS := A199411, offset := 0, derive := true, maxIndex := 100]
def A199411 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 * (2 * loop (λ (x _y : ℤ) ↦ 2 * ((x + x) + x)) x 2)))

end Sequence

