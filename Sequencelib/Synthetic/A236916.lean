/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A236916 sequence 
-/


namespace Sequence

@[OEIS := A236916, offset := 0, derive := true, maxIndex := 84]
def A236916 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ (((-x) / 4) % 2) + x) 2 x / 2)

end Sequence

