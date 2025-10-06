/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005672 sequence
-/

namespace Sequence

@[OEIS := A005672, offset := 0, maxIndex := 31, derive := true]
def A005672 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0 - loop (λ (x _y) ↦ x + x) (x / 2) 1

end Sequence