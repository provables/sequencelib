/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A196655 sequence
-/

namespace Sequence

@[OEIS := A196655, offset := 0, maxIndex := 100, derive := true]
def A196655 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ x + y) (2 * 2) 1 * loop (λ (x _y) ↦ x + x) x 2) + 2) * 3) + 1

end Sequence