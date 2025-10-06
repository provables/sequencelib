/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086388 sequence
-/

namespace Sequence

@[OEIS := A086388, offset := 1, maxIndex := 29, derive := true]
def A086388 (n : ℕ) : ℤ :=
  let x := n - 1
  1 + (x / 2)

end Sequence