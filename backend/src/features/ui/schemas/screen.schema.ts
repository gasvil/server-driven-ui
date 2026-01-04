import { ComponentSchema } from './component.schema';
import { PropsSchema } from './props.schema';

export type Layout = 'column' | 'row';

export interface ScreenSchema {
  id: string;
  layout: Layout;
  container?: PropsSchema;
  components: ComponentSchema[];
}
