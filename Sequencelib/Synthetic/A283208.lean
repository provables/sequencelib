/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A283208 sequence
-/

namespace Sequence

@[OEIS := A283208, offset := 0, maxIndex := 62, derive := true]
def A283208 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x x (x - (x / 2))

end Sequence