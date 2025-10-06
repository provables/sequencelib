/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A303609 sequence
-/

namespace Sequence

@[OEIS := A303609, offset := 0, maxIndex := 40, derive := true]
def A303609 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ x + y) (2 * (2 + x)) 0 * x) - x

end Sequence