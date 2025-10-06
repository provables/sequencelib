/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A147690 sequence
-/

namespace Sequence

@[OEIS := A147690, offset := 0, maxIndex := 16, derive := true]
def A147690 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) y 1 1 * (x + 1)) x 1

end Sequence