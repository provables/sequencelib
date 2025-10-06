/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329422 sequence
-/

namespace Sequence

@[OEIS := A329422, offset := 0, maxIndex := 9, derive := true]
def A329422 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ (((x / 2) / 2) / 2) + y) x 1 + x) + x) + x) * 2) + 1

end Sequence