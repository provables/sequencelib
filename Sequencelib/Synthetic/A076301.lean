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
# A076301 sequence 
-/


namespace Sequence

@[OEIS := A076301, offset := 0, derive := true, maxIndex := 100]
def A076301 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ x * y) x (loop (λ (x y : ℤ) ↦ (x - 1) + y) x 2) / 2)

end Sequence

