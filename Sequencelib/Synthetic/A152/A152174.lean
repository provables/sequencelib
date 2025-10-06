/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152174 sequence
-/

namespace Sequence

@[OEIS := A152174, offset := 0, maxIndex := 23, derive := true]
def A152174 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ 2 * (x - y)) x 1 ((-2))

end Sequence