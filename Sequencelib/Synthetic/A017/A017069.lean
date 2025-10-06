/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017069 sequence
-/

namespace Sequence

@[OEIS := A017069, offset := 0, maxIndex := 17, derive := true]
def A017069 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 2 * (x * y)) (λ (x _y) ↦ x) 4 (x + x) 2

end Sequence