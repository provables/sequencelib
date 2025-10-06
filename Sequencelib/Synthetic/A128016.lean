/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128016 sequence
-/

namespace Sequence

@[OEIS := A128016, offset := 0, maxIndex := 71, derive := true]
def A128016 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ y) (λ (x y) ↦ y - x) (x / 2) 1 2

end Sequence