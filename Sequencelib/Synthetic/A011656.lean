/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011656 sequence
-/

namespace Sequence

@[OEIS := A011656, offset := 0, maxIndex := 100, derive := true]
def A011656 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ ((((x / 2) + x) % 4) + x) + 1) x 1 + 1) % 2

end Sequence