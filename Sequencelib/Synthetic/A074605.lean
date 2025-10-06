/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074605 sequence
-/

namespace Sequence

@[OEIS := A074605, offset := 0, maxIndex := 22, derive := true]
def A074605 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x + x) + x) + y) (λ (_x y) ↦ 2 * (y + y)) x 2 1

end Sequence