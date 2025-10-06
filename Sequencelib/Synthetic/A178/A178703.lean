/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178703 sequence
-/

namespace Sequence

@[OEIS := A178703, offset := 0, maxIndex := 25, derive := true]
def A178703 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((x + x) + x)) x 1 / (1 + (2 * 3))

end Sequence