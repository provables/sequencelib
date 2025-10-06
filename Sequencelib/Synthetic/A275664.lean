/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A275664 sequence
-/

namespace Sequence

@[OEIS := A275664, offset := 0, maxIndex := 12, derive := true]
def A275664 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y) ↦ y) (λ (_x y) ↦ (y * y) + y) x 0 1 * 2) + 2

end Sequence