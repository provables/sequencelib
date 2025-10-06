/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017235 sequence
-/

namespace Sequence

@[OEIS := A017235, offset := 0, maxIndex := 22, derive := true]
def A017235 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (3 * (2 + ((x + x) + x)))

end Sequence