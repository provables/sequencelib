/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010914 sequence
-/

namespace Sequence

@[OEIS := A010914, offset := 0, maxIndex := 100, derive := true]
def A010914 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ 2 * ((x - y) + x)) (λ (x _y) ↦ x) (2 + x) 2 1 / 2) / 2

end Sequence