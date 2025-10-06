/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130589 sequence
-/

namespace Sequence

@[OEIS := A130589, offset := 0, maxIndex := 9, derive := true]
def A130589 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x 1 0) 2 (1 + x)

end Sequence