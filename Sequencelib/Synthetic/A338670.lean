/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A338670 sequence
-/

namespace Sequence

@[OEIS := A338670, offset := 0, maxIndex := 5, derive := true]
def A338670 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (y + y) x) x 1 % (((x + 1) * 2) + 1)

end Sequence