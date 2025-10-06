/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100888 sequence
-/

namespace Sequence

@[OEIS := A100888, offset := 0, maxIndex := 37, derive := true]
def A100888 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ (-x)) x 2 1 + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 1

end Sequence