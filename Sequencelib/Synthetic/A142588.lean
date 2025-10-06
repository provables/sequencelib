/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A142588 sequence
-/

namespace Sequence

@[OEIS := A142588, offset := 0, maxIndex := 50, derive := true]
def A142588 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) ((x + x) + x) 0 1

end Sequence