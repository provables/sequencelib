/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038866 sequence
-/

namespace Sequence

@[OEIS := A038866, offset := 1, maxIndex := 39, derive := true]
def A038866 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((2 + x) * (2 + (x + 2))) + 2) * 2) * 3) + 2) * 2

end Sequence