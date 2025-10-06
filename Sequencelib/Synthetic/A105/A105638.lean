/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105638 sequence
-/

namespace Sequence

@[OEIS := A105638, offset := 3, maxIndex := 100, derive := true]
def A105638 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((1 + x) * (x / 2)) + x

end Sequence