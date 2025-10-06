/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016897 sequence
-/

namespace Sequence

@[OEIS := A016897, offset := 0, maxIndex := 56, derive := true]
def A016897 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (2 + (x + x))) + x

end Sequence