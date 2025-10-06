/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A147838 sequence
-/

namespace Sequence

@[OEIS := A147838, offset := 0, maxIndex := 100, derive := true]
def A147838 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * ((x + x) + x)) - y) + x) (λ (x y) ↦ y - x) x 1 1

end Sequence