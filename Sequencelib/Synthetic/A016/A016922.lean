/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016922 sequence
-/

namespace Sequence

@[OEIS := A016922, offset := 0, maxIndex := 39, derive := true]
def A016922 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (1 + (2 * ((x + x) + x)))

end Sequence