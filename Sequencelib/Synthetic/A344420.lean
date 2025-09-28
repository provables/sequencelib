/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A344420 sequence 
-/


namespace Sequence

@[OEIS := A344420, offset := 0, derive := true, maxIndex := 94]
def A344420 (x : ℕ) : ℕ :=
  Int.toNat <| (x / loop (λ (x _y : ℤ) ↦ 1 + (x + x)) 2 2)

end Sequence

