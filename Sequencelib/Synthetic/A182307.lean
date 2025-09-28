/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182307 sequence 
-/


namespace Sequence

@[OEIS := A182307, offset := 0, derive := true, maxIndex := 100]
def A182307 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ ((x / 2) / 3) + x) x (2 + 4)

end Sequence

