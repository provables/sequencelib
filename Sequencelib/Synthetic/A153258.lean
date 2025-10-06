/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153258 sequence
-/

namespace Sequence

@[OEIS := A153258, offset := 1, maxIndex := 40, derive := true]
def A153258 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + x) * (((x - 2) * x) - 2)) - 2

end Sequence