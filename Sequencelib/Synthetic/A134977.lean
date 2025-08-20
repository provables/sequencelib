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
# A134977 sequence 
-/


namespace Sequence

@[OEIS := A134977, offset := 0, derive := true, maxIndex := 100]
def A134977 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 - loop2 (λ (x y : ℤ) ↦ x - y) (λ (x _y : ℤ) ↦ x) x 0 1) + 2 * (x % 2))

end Sequence

