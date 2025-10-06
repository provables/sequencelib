/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155155 sequence
-/

namespace Sequence

@[OEIS := A155155, offset := 0, maxIndex := 100, derive := true]
def A155155 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((2 % y) + x) + x) + x) (2 + x) 1 * 2

end Sequence