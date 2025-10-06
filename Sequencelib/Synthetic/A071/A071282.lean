/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071282 sequence
-/

namespace Sequence

@[OEIS := A071282, offset := 0, maxIndex := 79, derive := true]
def A071282 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 1 2 % ((x % 2) + 2)) + 1

end Sequence