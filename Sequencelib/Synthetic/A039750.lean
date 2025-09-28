/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039750 sequence 
-/


namespace Sequence

@[OEIS := A039750, offset := 0, derive := true, maxIndex := 6]
def A039750 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ ((x * y) - 1) + x) x 1 / 3) + 1)

end Sequence

