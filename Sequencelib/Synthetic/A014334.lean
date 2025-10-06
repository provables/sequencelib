/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014334 sequence
-/

namespace Sequence

@[OEIS := A014334, offset := 0, maxIndex := 100, derive := true]
def A014334 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ 2 * ((x + y) - 2)) x 2 1 - 2

end Sequence