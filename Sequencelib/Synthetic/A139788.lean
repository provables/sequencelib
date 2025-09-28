/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139788 sequence 
-/


namespace Sequence

@[OEIS := A139788, offset := 0, derive := true, maxIndex := 80]
def A139788 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 * (((x + x) + x) % (1 + 4))))

end Sequence

