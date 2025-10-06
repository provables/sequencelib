/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A295288 sequence
-/

namespace Sequence

@[OEIS := A295288, offset := 0, maxIndex := 100, derive := true]
def A295288 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ ((x + y) + y) + y) (x + 1) 1 * loop (λ (x _y) ↦ x + x) x 1) / 2) + 1) / 2

end Sequence