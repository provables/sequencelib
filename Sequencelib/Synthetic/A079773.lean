/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079773 sequence
-/

namespace Sequence

@[OEIS := A079773, offset := 0, maxIndex := 100, derive := true]
def A079773 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ (x * loop (λ (x _y) ↦ x * x) 2 2) + y) x 0 1

end Sequence