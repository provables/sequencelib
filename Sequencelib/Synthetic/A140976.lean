/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140976 sequence 
-/


namespace Sequence

@[OEIS := A140976, offset := 0, derive := true, maxIndex := 90]
def A140976 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (2 + (2 - ((x / 2) % (1 + 4)))))

end Sequence

