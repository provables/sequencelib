/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A116952 sequence
-/

namespace Sequence

@[OEIS := A116952, offset := 0, maxIndex := 26, derive := true]
def A116952 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 3 * (1 + x)) x 2 - 1

end Sequence