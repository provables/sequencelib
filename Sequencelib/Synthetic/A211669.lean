/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A211669 sequence
-/

namespace Sequence

@[OEIS := A211669, offset := 1, maxIndex := 86, derive := true]
def A211669 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + ((x - 1) / (1 + (2 + (x / 2))))

end Sequence