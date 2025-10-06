/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169823 sequence
-/

namespace Sequence

@[OEIS := A169823, offset := 0, maxIndex := 45, derive := true]
def A169823 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 + y) * x) 3 x

end Sequence