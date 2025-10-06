/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143984 sequence
-/

namespace Sequence

@[OEIS := A143984, offset := 0, maxIndex := 10, derive := true]
def A143984 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (x * x) - y) (2 + x) 1 + 2

end Sequence