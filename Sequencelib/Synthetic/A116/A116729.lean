/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A116729 sequence
-/

namespace Sequence

@[OEIS := A116729, offset := 0, maxIndex := 29, derive := true]
def A116729 (x : ℕ) : ℤ :=
  loop (λ (_x y) ↦ 3 * y) (x - 2) 1 + x * x

end Sequence