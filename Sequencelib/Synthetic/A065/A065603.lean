/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A065603 sequence
-/

namespace Sequence

@[OEIS := A065603, offset := 1, maxIndex := 15, derive := true]
def A065603 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((x + x) / (2 + (x / 2))) + 1) + x) / 2

end Sequence