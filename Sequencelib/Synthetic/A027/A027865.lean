/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027865 sequence
-/

namespace Sequence

@[OEIS := A027865, offset := 0, maxIndex := 44, derive := true]
def A027865 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ x + y) (2 + x) 1 * 2) * 2) + 2) * 3) + 1

end Sequence