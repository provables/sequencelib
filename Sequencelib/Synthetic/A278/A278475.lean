/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A278475 sequence
-/

namespace Sequence

@[OEIS := A278475, offset := 0, maxIndex := 17, derive := true]
def A278475 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((loop (λ (x y) ↦ (2 + (2 + y)) * x) 2 x - 1) - x) + y) (λ (x _y) ↦ x) x 1 1

end Sequence