/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216466 sequence
-/

namespace Sequence

@[OEIS := A216466, offset := 0, maxIndex := 28, derive := true]
def A216466 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) y 1 / x) x 1 % loop (λ (x y) ↦ x * y) x 1

end Sequence