/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094633 sequence
-/

namespace Sequence

@[OEIS := A094633, offset := 0, maxIndex := 25, derive := true]
def A094633 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 2 1 * loop (λ (x _y) ↦ 1 - (x + x)) x 1

end Sequence