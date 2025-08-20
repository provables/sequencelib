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
# A060377 sequence 
-/


namespace Sequence

@[OEIS := A060377, offset := 0]
def A060377 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x + x) + x) (loop (λ (x _y : ℤ) ↦ (x + x) * x) x 1) 1

end Sequence

