/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018904 sequence
-/

namespace Sequence

@[OEIS := A018904, offset := 0, maxIndex := 100, derive := true]
def A018904 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((x + x) + x)) + y) (λ (x y) ↦ x + y) x 1 0

end Sequence