/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A075150 sequence
-/

namespace Sequence

@[OEIS := A075150, offset := 0, maxIndex := 100, derive := true]
def A075150 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (y - x) - x) (λ (x y) ↦ x - y) x 2 1 + 2

end Sequence