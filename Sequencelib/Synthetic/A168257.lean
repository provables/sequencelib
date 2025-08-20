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
# A168257 sequence 
-/


namespace Sequence

@[OEIS := A168257, offset := 0, derive := true, maxIndex := 4]
def A168257 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 1 (loop (λ (x y : ℤ) ↦ 1 + ((x * x) * y)) x 0)

end Sequence

