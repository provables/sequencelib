/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A049637 sequence
-/

namespace Sequence

@[OEIS := A049637, offset := 0, maxIndex := 100, derive := true]
def A049637 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((1 + (2 * loop (λ (_x y) ↦ 2 + y) x x)) / 3) + 1) + x) - x / 2) + x) + 1

end Sequence