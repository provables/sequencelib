/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081133 sequence
-/

namespace Sequence

@[OEIS := A081133, offset := 0, maxIndex := 97, derive := true]
def A081133 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x (1 + loop (λ (x y) ↦ x + y) x x) x

end Sequence