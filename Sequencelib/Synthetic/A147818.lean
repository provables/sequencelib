/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A147818 sequence 
-/


namespace Sequence

@[OEIS := A147818, offset := 1, derive := true, maxIndex := 100]
def A147818 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (2 * (2 + (((x % 2) + x) % 4))))

end Sequence

