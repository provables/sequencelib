/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017532 sequence
-/

namespace Sequence

@[OEIS := A017532, offset := 0, maxIndex := 100, derive := true]
def A017532 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (x _y) ↦ x) 3 (loop (λ (x y) ↦ (2 + y) * x) 2 x) 1

end Sequence