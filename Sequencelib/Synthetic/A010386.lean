/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010386 sequence
-/

namespace Sequence

@[OEIS := A010386, offset := 1, maxIndex := 6, derive := true]
def A010386 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((x / 2) + x) / 2) * x) + x % 4

end Sequence