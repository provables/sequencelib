/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A311807 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A311807, offset := 0, maxIndex := 49, derive := true]
def A311807 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ ((x / 2) - x / 3) + y) x 1 + x) + x) + x

end Sequence