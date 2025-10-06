/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008865 sequence
-/

namespace Sequence

@[OEIS := A008865, offset := 1, maxIndex := 100, derive := true]
def A008865 (n : ℕ) : ℤ :=
  let x := n - 1
  ((2 + x) * x) - 1

end Sequence