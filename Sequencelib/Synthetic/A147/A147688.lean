/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A147688 sequence
-/

namespace Sequence

@[OEIS := A147688, offset := 0, maxIndex := 19, derive := true]
def A147688 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + x)) + y) (λ (x y) ↦ 2 * (((x + y) + y) * 2)) x 1 2

end Sequence