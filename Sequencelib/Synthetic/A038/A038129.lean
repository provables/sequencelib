/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038129 sequence
-/

namespace Sequence

@[OEIS := A038129, offset := 0, maxIndex := 71, derive := true]
def A038129 (x : ℕ) : ℕ :=
  Int.toNat <| (((x / loop (λ (x _y) ↦ 1 + (x * x)) 2 2) + x) / 4) + x

end Sequence