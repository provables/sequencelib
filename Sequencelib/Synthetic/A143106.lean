/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143106 sequence 
-/


namespace Sequence

@[OEIS := A143106, offset := 0, derive := true, maxIndex := 6]
def A143106 (x : ℕ) : ℕ :=
  Int.toNat <| (((comprN (λ (x : ℤ) ↦ (x / 2) % 2) (x - 2) + x) * 2) + 1)

end Sequence

