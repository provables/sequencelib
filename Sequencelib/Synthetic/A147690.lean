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
# A147690 sequence 
-/


namespace Sequence

@[OEIS := A147690, offset := 0, derive := true, maxIndex := 17]
def A147690 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) y 1 1 * (x + 1)) x 1

end Sequence

