/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077953 sequence 
-/


namespace Sequence

@[OEIS := A077953, offset := 0, derive := true, maxIndex := 100]
def A077953 (x : ℕ) : ℤ :=
  loop (λ (x _y : ℤ) ↦ 1 - (x + x)) (x / 2) 1

end Sequence

