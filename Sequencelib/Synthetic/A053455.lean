/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053455 sequence
-/

namespace Sequence

@[OEIS := A053455, offset := 0, maxIndex := 100, derive := true]
def A053455 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ 2 * ((x + x) * 3)) x 0 1 * loop (λ (x _y) ↦ 2 * x) x 1) / 2

end Sequence