/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216038 sequence
-/

namespace Sequence

@[OEIS := A216038, offset := 2, maxIndex := 27, derive := true]
def A216038 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((((((loop (λ (x _y) ↦ 1 + ((x / 3) + x)) x 1 / 2) / 2) + 2) / 2) / 2) + 2) / 2) / 2) + 1) / 2) / 2) % 2

end Sequence