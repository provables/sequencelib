/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087278 sequence
-/

namespace Sequence

@[OEIS := A087278, offset := 0, maxIndex := 59, derive := true]
def A087278 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) - x) 1 (x / 3) + x

end Sequence