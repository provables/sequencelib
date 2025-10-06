/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017556 sequence
-/

namespace Sequence

@[OEIS := A017556, offset := 0, maxIndex := 9, derive := true]
def A017556 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (x _y) ↦ x) 3 (2 + loop (λ (x y) ↦ (2 + y) * x) 2 x) 1

end Sequence