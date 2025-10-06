/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017559 sequence
-/

namespace Sequence

@[OEIS := A017559, offset := 0, maxIndex := 22, derive := true]
def A017559 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (3 * (1 + (2 * (x + x))))

end Sequence