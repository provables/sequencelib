/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017558 sequence
-/

namespace Sequence

@[OEIS := A017558, offset := 0, maxIndex := 29, derive := true]
def A017558 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (3 * (1 + (2 * (x + x))))

end Sequence