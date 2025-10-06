/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039749 sequence
-/

namespace Sequence

@[OEIS := A039749, offset := 0, maxIndex := 4, derive := true]
def A039749 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ ((x * y) - 2 / y) + y) x 1 + x

end Sequence