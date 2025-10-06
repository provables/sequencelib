/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016938 sequence
-/

namespace Sequence

@[OEIS := A016938, offset := 0, maxIndex := 20, derive := true]
def A016938 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x * x) * y) * y) (λ (x _y) ↦ x * 2) 2 (1 + ((x + x) + x)) 2

end Sequence