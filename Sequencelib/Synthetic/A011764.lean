/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011764 sequence
-/

namespace Sequence

@[OEIS := A011764, offset := 0, maxIndex := 10, derive := true]
def A011764 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) x 3

end Sequence