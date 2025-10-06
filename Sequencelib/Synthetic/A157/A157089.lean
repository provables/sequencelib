/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157089 sequence
-/

namespace Sequence

@[OEIS := A157089, offset := 0, maxIndex := 16, derive := true]
def A157089 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x) (x + x) 2 1

end Sequence