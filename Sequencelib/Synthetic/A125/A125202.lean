/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A125202 sequence
-/

namespace Sequence

@[OEIS := A125202, offset := 1, maxIndex := 54, derive := true]
def A125202 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 * ((2 * (x * x)) + x)) - 1

end Sequence