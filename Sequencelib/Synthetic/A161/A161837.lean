/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161837 sequence
-/

namespace Sequence

@[OEIS := A161837, offset := 1, maxIndex := 9, derive := true]
def A161837 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((2 + x) % 3) + x) % 2) * (x - (x % 3))

end Sequence