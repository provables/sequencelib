/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A275591 sequence
-/

namespace Sequence

@[OEIS := A275591, offset := 0, maxIndex := 48, derive := true]
def A275591 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 * (2 + (2 + y))) + x) x 1

end Sequence