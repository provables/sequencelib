/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A289643 sequence
-/

namespace Sequence

@[OEIS := A289643, offset := 0, maxIndex := 39, derive := true]
def A289643 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + x) * loop (λ (x y) ↦ x + (y * y)) x 0

end Sequence