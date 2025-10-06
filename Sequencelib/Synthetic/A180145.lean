/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180145 sequence
-/

namespace Sequence

@[OEIS := A180145, offset := 0, maxIndex := 22, derive := true]
def A180145 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x y) ↦ 2 * (((x + x) * 2) + y)) x 1 1

end Sequence