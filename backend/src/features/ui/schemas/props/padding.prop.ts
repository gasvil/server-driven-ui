export interface PaddingProp {
  top?: number;
  right?: number;
  bottom?: number;
  left?: number;
}

export const Padding = {
  all(value: number): PaddingProp {
    return {
      top: value,
      right: value,
      bottom: value,
      left: value,
    };
  },
};
