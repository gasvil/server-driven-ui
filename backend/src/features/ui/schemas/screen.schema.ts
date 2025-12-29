import { ComponentSchema } from './component.schema';

export interface ScreenSchema {
  id: string;
  layout: string;
  components: ComponentSchema[];
}
