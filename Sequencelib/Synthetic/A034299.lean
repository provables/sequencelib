/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A034299 sequence 
-/


namespace Sequence

@[OEIS := A034299, offset := 0, derive := true, maxIndex := 50]
def A034299 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ -x) y y + x) + x) x 2 / 2)

end Sequence

