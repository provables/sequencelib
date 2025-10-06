/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077245 sequence
-/

namespace Sequence

@[OEIS := A077245, offset := 0, maxIndex := 18, derive := true]
def A077245 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (2 * (x + x))) + y) (λ (x _y) ↦ (-x)) x 1 2

end Sequence