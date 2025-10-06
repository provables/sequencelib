/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A304498 sequence
-/

namespace Sequence

@[OEIS := A304498, offset := 0, maxIndex := 60, derive := true]
def A304498 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ ((((loop (λ (_x _y) ↦ 1) ((x % 3) % 2) x / 2) % 2) % 2) + 1) + x) x 2 - 1) + (1 + x)

end Sequence