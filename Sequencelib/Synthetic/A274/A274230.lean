/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A274230 sequence
-/

namespace Sequence

@[OEIS := A274230, offset := 0, maxIndex := 31, derive := true]
def A274230 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) x 1 - loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ x + x) x 1 1

end Sequence