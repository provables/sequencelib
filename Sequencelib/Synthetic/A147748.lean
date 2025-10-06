/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A147748 sequence
-/

namespace Sequence

@[OEIS := A147748, offset := 0, maxIndex := 24, derive := true]
def A147748 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * ((x / 2) + x)) - y) + x) (λ (x y) ↦ x + y) x 1 1

end Sequence