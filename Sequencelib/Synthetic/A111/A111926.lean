/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111926 sequence
-/

namespace Sequence

@[OEIS := A111926, offset := 0, maxIndex := 33, derive := true]
def A111926 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) y 1 0 + x) + x) x 0 - x

end Sequence