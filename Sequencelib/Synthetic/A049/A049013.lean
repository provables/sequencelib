/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A049013 sequence
-/

namespace Sequence

@[OEIS := A049013, offset := 1, maxIndex := 24, derive := true]
def A049013 (n : ℕ) : ℤ :=
  let x := n - 1
  1 + (2 * (2 + x))

end Sequence