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
# A174183 sequence 
-/


namespace Sequence

@[OEIS := A174183, offset := 0, derive := true, maxIndex := 100]
def A174183 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y : ℤ) ↦ 2 * loop (λ (x y : ℤ) ↦ x * y) y ((2 * 2) + 1)) x 1

end Sequence

