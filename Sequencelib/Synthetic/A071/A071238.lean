/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071238 sequence
-/

namespace Sequence

@[OEIS := A071238, offset := 0, maxIndex := 37, derive := true]
def A071238 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) x (((x * x) * (1 + x)) * x) / 3

end Sequence