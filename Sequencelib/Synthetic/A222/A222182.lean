/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A222182 sequence
-/

namespace Sequence

@[OEIS := A222182, offset := 1, maxIndex := 100, derive := true]
def A222182 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 * (((x * x) - 2) + x)) - 1

end Sequence