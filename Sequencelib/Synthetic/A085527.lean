/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085527 sequence
-/

namespace Sequence

@[OEIS := A085527, offset := 0, maxIndex := 100, derive := true]
def A085527 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x * y)) + x) (λ (_x y) ↦ y) x 1 x

end Sequence