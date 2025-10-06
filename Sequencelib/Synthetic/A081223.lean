/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081223 sequence
-/

namespace Sequence

@[OEIS := A081223, offset := 1, maxIndex := 68, derive := true]
def A081223 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 + (((x / (1 + 4)) + x) + x)) / 3) + 2) + x

end Sequence