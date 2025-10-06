/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066587 sequence
-/

namespace Sequence

@[OEIS := A066587, offset := 1, maxIndex := 24, derive := true]
def A066587 (n : ℕ) : ℤ :=
  let x := n - 1
  1 + (2 + (2 * ((x - (x % 2)) + x)))

end Sequence