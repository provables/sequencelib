/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182386 sequence
-/

namespace Sequence

@[OEIS := A182386, offset := 0, maxIndex := 100, derive := true]
def A182386 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ 1 - (x * y)) x 1

end Sequence