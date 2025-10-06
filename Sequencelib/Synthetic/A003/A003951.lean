/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003951 sequence
-/

namespace Sequence

@[OEIS := A003951, offset := 0, maxIndex := 100, derive := true]
def A003951 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (2 * (2 * (x + x))) + 1 / x) x 1

end Sequence