/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140721 sequence
-/

namespace Sequence

@[OEIS := A140721, offset := 0, maxIndex := 30, derive := true]
def A140721 (x : ℕ) : ℤ :=
  (((loop (λ (x _y) ↦ loop (λ (x _y) ↦ (-((x * 4) * 2))) x 1) x 1 + 1) * loop (λ (x _y) ↦ x + x) x 1) + 1) / 2

end Sequence