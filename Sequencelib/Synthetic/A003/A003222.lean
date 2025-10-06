/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003222 sequence
-/

namespace Sequence

@[OEIS := A003222, offset := 0, maxIndex := 21, derive := true]
def A003222 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) ((x + x) + x) 2 - ((4 * x) + 2) * x

end Sequence