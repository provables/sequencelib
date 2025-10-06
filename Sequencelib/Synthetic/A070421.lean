/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070421 sequence
-/

namespace Sequence

@[OEIS := A070421, offset := 0, maxIndex := 89, derive := true]
def A070421 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ loop (λ (x _y) ↦ 1 + (x + x)) 2 y) (x % 3) 1

end Sequence