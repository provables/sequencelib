/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A283874 sequence
-/

namespace Sequence

@[OEIS := A283874, offset := 0, maxIndex := 16, derive := true]
def A283874 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * y) + y) (λ (x y) ↦ x / y) x 1 1 + 1

end Sequence