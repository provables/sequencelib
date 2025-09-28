/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140966 sequence 
-/


namespace Sequence

@[OEIS := A140966, offset := 0, derive := true, maxIndex := 100]
def A140966 (x : ℕ) : ℤ :=
  (1 + loop (λ (x _y : ℤ) ↦ 2 - (x + x)) x 1)

end Sequence

