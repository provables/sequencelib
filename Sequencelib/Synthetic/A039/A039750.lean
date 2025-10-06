/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039750 sequence
-/

namespace Sequence

@[OEIS := A039750, offset := 0, maxIndex := 5, derive := true]
def A039750 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ ((x * y) - 1) + x) x 1 / 3) + 1

end Sequence