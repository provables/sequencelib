/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180597 sequence
-/

namespace Sequence

@[OEIS := A180597, offset := 0, maxIndex := 100, derive := true]
def A180597 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x y) ↦ x - y) 2 x % (1 + (2 * 4))) + 1) x 0

end Sequence