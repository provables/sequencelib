/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A256873 sequence
-/

namespace Sequence

@[OEIS := A256873, offset := 0, maxIndex := 100, derive := true]
def A256873 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (_x y) ↦ 2 * (y + y)) x 3 1

end Sequence