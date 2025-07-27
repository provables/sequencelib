/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/

import Mathlib
import Sequencelib.Meta
import GenSeq
open Synth

/-!

# A132293 sequence 
-/

namespace Sequence

@[OEIS := A132293, offset := 3, derive := true, maxIndex := 10]
def A132293 (n : ℕ) : ℤ :=
  let x := n - 3
  (1 + (x + loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ 0) (x) (0) (2)))


end Sequence
