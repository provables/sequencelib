/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064335 sequence
-/

namespace Sequence

@[OEIS := A064335, offset := 0, maxIndex := 99, derive := true]
def A064335 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ x * y) (x + x) 3 * 2) / (2 + x)

end Sequence