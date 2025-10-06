/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027281 sequence
-/

namespace Sequence

@[OEIS := A027281, offset := 0, maxIndex := 25, derive := true]
def A027281 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + x) * loop2 (λ (x y) ↦ (x + y) + y) (λ (x _y) ↦ x + x) x 1 1

end Sequence