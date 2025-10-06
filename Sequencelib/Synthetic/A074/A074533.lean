/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074533 sequence
-/

namespace Sequence

@[OEIS := A074533, offset := 0, maxIndex := 19, derive := true]
def A074533 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y) ↦ (x + x) + y) (λ (_x y) ↦ (y + y) + y) x 2 1) * loop (λ (x _y) ↦ x + x) x 1

end Sequence