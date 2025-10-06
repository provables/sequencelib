/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134668 sequence
-/

namespace Sequence

@[OEIS := A134668, offset := 0, maxIndex := 77, derive := true]
def A134668 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ 1 - (x % 3)) x (1 + x)

end Sequence