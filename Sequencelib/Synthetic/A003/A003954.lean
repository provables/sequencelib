/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003954 sequence
-/

namespace Sequence

@[OEIS := A003954, offset := 0, maxIndex := 100, derive := true]
def A003954 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 2 * ((2 * ((x + x) + x)) - x / 2)) x 1

end Sequence