/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184017 sequence
-/

namespace Sequence

@[OEIS := A184017, offset := 1, maxIndex := 80, derive := true]
def A184017 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (((2 + x) * x) / (1 + (2 * 4)))) + x

end Sequence