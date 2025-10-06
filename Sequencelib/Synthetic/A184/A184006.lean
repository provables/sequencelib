/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184006 sequence
-/

namespace Sequence

@[OEIS := A184006, offset := 1, maxIndex := 64, derive := true]
def A184006 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((1 - ((x / 3) + x)) / ((2 * 2) + 1)) + 1) + x) + x

end Sequence