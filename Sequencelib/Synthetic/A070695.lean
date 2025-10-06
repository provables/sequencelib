/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070695 sequence
-/

namespace Sequence

@[OEIS := A070695, offset := 0, maxIndex := 92, derive := true]
def A070695 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (_x y) ↦ y) 3 1 x % loop (λ (x _y) ↦ 1 + ((x + x) + x)) 2 1

end Sequence