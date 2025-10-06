/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092486 sequence
-/

namespace Sequence

@[OEIS := A092486, offset := 0, maxIndex := 100, derive := true]
def A092486 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop2 (λ (_x y) ↦ (-y)) (λ (x _y) ↦ x) x 2 0 + x)

end Sequence