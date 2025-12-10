/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002015 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A002015, offset := 0, maxIndex := 59, derive := true]
def A002015 (x : ℕ) : ℕ :=
  Int.toNat <| (x * x) % loop (λ (x _y) ↦ 1 + ((2 + x) * x)) 2 2

end Sequence