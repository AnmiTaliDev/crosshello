import { Component } from '@angular/core';

@Component({
  selector: 'app-hello',
  template: `
    <div>
      <h1>Hello, World!</h1>
    </div>
  `,
  styles: [`
    div {
      text-align: center;
      font-family: Arial, sans-serif;
      margin-top: 60px;
    }
  `]
})
export class HelloComponent {
  title = 'Hello, World!';
}