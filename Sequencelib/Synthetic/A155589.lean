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
# A155589 sequence 
-/


namespace Sequence

@[OEIS := A155589, offset := 0, derive := true, maxIndex := 100]
def A155589 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + (x + x)) x (loop (λ (x _y : ℤ) ↦ (x + x) + x) x 1)

end Sequence

