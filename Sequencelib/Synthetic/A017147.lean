/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017147 sequence
-/

namespace Sequence

@[OEIS := A017147, offset := 0, maxIndex := 12, derive := true]
def A017147 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x * x) * x) * y) * y) (λ (x _y) ↦ x) 2 (2 * loop (λ (x _y) ↦ 1 + (x + x)) 2 x) 1

end Sequence