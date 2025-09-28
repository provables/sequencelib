/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139614 sequence 
-/


namespace Sequence

@[OEIS := A139614, offset := 0, derive := true, maxIndex := 41]
def A139614 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 1 + (x + (((x * y) * 3) * 2))) 2 x

end Sequence

