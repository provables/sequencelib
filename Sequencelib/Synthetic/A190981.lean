/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A190981 sequence
-/

namespace Sequence

@[OEIS := A190981, offset := 0, maxIndex := 21, derive := true]
def A190981 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ 2 * (((y * 2) + x) * 2)) x 0 1

end Sequence