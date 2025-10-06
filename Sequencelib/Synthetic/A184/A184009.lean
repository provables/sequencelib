/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184009 sequence
-/

namespace Sequence

@[OEIS := A184009, offset := 1, maxIndex := 72, derive := true]
def A184009 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((3 * ((2 + x) * x)) / (1 + (2 + 4))) + 1) + x

end Sequence