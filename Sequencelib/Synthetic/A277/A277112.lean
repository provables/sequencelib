/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277112 sequence
-/

namespace Sequence

@[OEIS := A277112, offset := 0, maxIndex := 68, derive := true]
def A277112 (x : ℕ) : ℕ :=
  Int.toNat <| ((x + x) / (1 + (2 + (4 * loop (λ (x _y) ↦ x * x) 2 2)))) + x

end Sequence