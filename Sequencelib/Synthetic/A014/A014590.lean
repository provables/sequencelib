/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014590 sequence 
-/


namespace Sequence

@[OEIS := A014590, offset := 0, derive := true, maxIndex := 10]
def A014590 (x : ℕ) : ℤ :=
  if (((x - 2) - 2) - 2) ≤ 0 then 1 else 0

end Sequence

