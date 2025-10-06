/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154949 sequence
-/

namespace Sequence

@[OEIS := A154949, offset := 0, maxIndex := 33, derive := true]
def A154949 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((((y * y) + x) / (1 + x)) + x) + y) (λ (x _y) ↦ x) x 1 0

end Sequence