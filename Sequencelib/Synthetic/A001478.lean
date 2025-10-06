/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001478 sequence
-/

namespace Sequence

@[OEIS := A001478, offset := 1, maxIndex := 100, derive := true]
def A001478 (n : ℕ) : ℤ :=
  let x := n - 1
  (-(1 + x))

end Sequence