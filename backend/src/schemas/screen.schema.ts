import { Component } from './component.schema';

export interface Screen {
  id: string;
  layout: string;
  components: Component[];
}
