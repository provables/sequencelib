/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174007 sequence 
-/


namespace Sequence

@[OEIS := A174007, offset := 1, derive := true, maxIndex := 73]
def A174007 (n : ℕ) : ℤ :=
  let x := n - 1
  if (x % 2) ≤ 0 then 2 else -(x / 2)

end Sequence

