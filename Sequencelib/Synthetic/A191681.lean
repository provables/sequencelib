/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191681 sequence
-/

namespace Sequence

@[OEIS := A191681, offset := 0, maxIndex := 19, derive := true]
def A191681 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x + x) + x) (x + x) 1 / 2

end Sequence