/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A349682 sequence
-/

namespace Sequence

@[OEIS := A349682, offset := 0, maxIndex := 35, derive := true]
def A349682 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ x * x) 1 (3 * (1 + (2 * x))) + 2) * x) + 1

end Sequence