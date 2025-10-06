/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A254758 sequence
-/

namespace Sequence

@[OEIS := A254758, offset := 0, maxIndex := 19, derive := true]
def A254758 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) (x + x) 1 ((2 * (2 * 2)) + 1)

end Sequence