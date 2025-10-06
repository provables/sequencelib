/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077236 sequence
-/

namespace Sequence

@[OEIS := A077236, offset := 0, maxIndex := 22, derive := true]
def A077236 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (2 * (2 * (2 + x))) - y) (λ (x _y) ↦ x) x 0 1 + 2) + 2

end Sequence