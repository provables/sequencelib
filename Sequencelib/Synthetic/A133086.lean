/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133086 sequence
-/

namespace Sequence

@[OEIS := A133086, offset := 0, maxIndex := 100, derive := true]
def A133086 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (2 * (x + y)) + y) (λ (_x _y) ↦ 0) x 2 x + 1) / 2

end Sequence