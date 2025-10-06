/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084132 sequence
-/

namespace Sequence

@[OEIS := A084132, offset := 0, maxIndex := 100, derive := true]
def A084132 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ 2 * (((x + y) * 2) + x)) x 1 2

end Sequence