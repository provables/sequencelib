/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113790 sequence
-/

namespace Sequence

@[OEIS := A113790, offset := 1, maxIndex := 72, derive := true]
def A113790 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 + (x % (1 + 4))) % 3) + x

end Sequence