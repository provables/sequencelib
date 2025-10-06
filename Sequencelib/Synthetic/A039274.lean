/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039274 sequence
-/

namespace Sequence

@[OEIS := A039274, offset := 1, maxIndex := 70, derive := true]
def A039274 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * ((x / 2) / (1 + 4))) + x

end Sequence