/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023445 sequence
-/

namespace Sequence

@[OEIS := A023445, offset := 0, maxIndex := 58, derive := true]
def A023445 (x : ℕ) : ℤ :=
  (x - 1) - 2

end Sequence