/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167876 sequence
-/

namespace Sequence

@[OEIS := A167876, offset := 0, maxIndex := 100, derive := true]
def A167876 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ comprN (λ (x : ℤ) ↦ 0) (x + y)) (λ (x y) ↦ y - x) x 1 2

end Sequence