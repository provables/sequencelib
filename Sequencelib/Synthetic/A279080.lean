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
# A279080 sequence 
-/


namespace Sequence

@[OEIS := A279080, offset := 0, derive := true, maxIndex := 100]
def A279080 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + (loop (λ (x _y : ℤ) ↦ x / 3) 2 x + x)) x 0

end Sequence

