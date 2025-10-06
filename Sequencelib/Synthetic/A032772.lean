/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A032772 sequence
-/

namespace Sequence

@[OEIS := A032772, offset := 0, maxIndex := 3, derive := true]
def A032772 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y) ↦ y) (λ (_x y) ↦ y * y) x 0 2 * 2) + x

end Sequence